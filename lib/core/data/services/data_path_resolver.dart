import 'package:flutter/foundation.dart' show debugPrint;
// lib/core/data/services/data_path_resolver.dart

import 'dart:io';
import 'dart:convert';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:file_picker/file_picker.dart';
import '../../logging/file_logger.dart';

/// Resolves and manages the user-selected data storage root directory.
///
/// Invariant: no data path is ever derived from the folder that contains the
/// application binary. That folder is wiped or replaced on upgrade, so all
/// data lives in a user-selected folder or a user-owned default
/// (%LOCALAPPDATA%\Bayaa or %USERPROFILE%\Bayaa).
class DataPathResolver {
  static const String _systemConfigFileName = 'system_config.json';
  static const String _dataRootKey = 'data_root_path';
  static const String _writeTestFileName = '.bayaa_write_test';

  String? _dataRootPath;
  File? _systemConfigFile;

  /// Set when the user cancelled the picker and we fell back to the default
  /// location. The UI should read this after [promptUserForDataPath] returns
  /// and show it in a toast/dialog so Cancel is never silent.
  String? lastNotice;

  /// Set when [promptUserForDataPath] returns false. Human-readable reason.
  String? lastError;

  /// Initialize and resolve the data root path.
  Future<bool> initialize() async {
    // Determine system config path: %APPDATA%\Bayaa\system_config.json
    String? appData = Platform.environment['APPDATA'];
    if (appData == null) {
      // Fallback to path_provider if APPDATA env var is missing (unlikely on Windows)
      final appSupport = await getApplicationSupportDirectory();
      appData = appSupport.path;
    }

    final systemConfigDir = Directory(path.join(appData, 'Bayaa'));
    if (!await systemConfigDir.exists()) {
      await systemConfigDir.create(recursive: true);
    }

    _systemConfigFile = File(path.join(systemConfigDir.path, _systemConfigFileName));

    if (await _systemConfigFile!.exists()) {
      final configJson = await _systemConfigFile!.readAsString();
      final config = jsonDecode(configJson) as Map<String, dynamic>;
      _dataRootPath = config[_dataRootKey] as String?;

      if (_dataRootPath != null && await Directory(_dataRootPath!).exists()) {
        return true;
      }
    }

    return false;
  }

  /// Check if a directory contains existing BayaaData
  static bool hasExistingData(String directoryPath) {
    final bayaaDataDir = Directory(path.join(directoryPath, 'BayaaData'));
    if (!bayaaDataDir.existsSync()) return false;

    // Check for key indicators of valid data
    final dbDir = Directory(path.join(bayaaDataDir.path, 'db'));
    final configDir = Directory(path.join(bayaaDataDir.path, 'config'));

    return dbDir.existsSync() || configDir.existsSync();
  }

  /// Check if path itself IS a BayaaData folder (user selected 'BayaaData' directly)
  static bool isBayaaDataFolder(String directoryPath) {
    final dirName = path.basename(directoryPath);
    if (dirName != 'BayaaData') return false;

    final dbDir = Directory(path.join(directoryPath, 'db'));
    final configDir = Directory(path.join(directoryPath, 'config'));

    return dbDir.existsSync() || configDir.existsSync();
  }

  /// User-owned default parent folder, safe across upgrades and never under
  /// Program Files: %LOCALAPPDATA%\Bayaa, else %USERPROFILE%\Bayaa.
  Future<String> _userOwnedDefaultParent() async {
    final localAppData = Platform.environment['LOCALAPPDATA'];
    if (localAppData != null && localAppData.isNotEmpty) {
      return path.join(localAppData, 'Bayaa');
    }
    final userProfile = Platform.environment['USERPROFILE'];
    if (userProfile != null && userProfile.isNotEmpty) {
      return path.join(userProfile, 'Bayaa');
    }
    // Last resort, still a per-user location.
    final support = await getApplicationSupportDirectory();
    return path.join(support.path, 'Bayaa');
  }

  /// Writes and deletes a probe file. Throws if the directory isn't writable.
  Future<void> _verifyWritable(Directory dir) async {
    final probe = File(path.join(dir.path, _writeTestFileName));
    await probe.writeAsString('ok', flush: true);
    await probe.delete();
  }

  /// Prompt user to select data storage directory.
  ///
  /// Returns false (with [lastError] set) if the chosen location isn't
  /// writable. Nothing is saved or created in that case.
  Future<bool> promptUserForDataPath({bool allowCancel = true}) async {
    lastNotice = null;
    lastError = null;

    final defaultParent = await _userOwnedDefaultParent();
    final defaultDataPath = path.join(defaultParent, 'BayaaData');

    debugPrint('  🔍 Default data path suggested: $defaultDataPath');

    // Show dialog
    String? result;
    try {
      result = await FilePicker.platform.getDirectoryPath(
        dialogTitle: 'Select Data Storage Location\n\nDefault: $defaultDataPath',
        lockParentWindow: false,
      );
    } catch (e) {
      debugPrint('  ❌ FilePicker error: $e');
      result = null;
    }

    debugPrint('  📥 FilePicker result: $result');
    String selectedDirectory;

    if (result == null) {
      // User cancelled - use a user-owned, upgrade-safe default location.
      debugPrint('  ℹ️ User cancelled folder selection. Using default: $defaultParent');
      selectedDirectory = defaultParent;
      lastNotice = 'No folder was selected. Your data will be stored in:\n'
          '$defaultDataPath\n\n'
          'You can move it later from Settings.';
      try {
        await Directory(selectedDirectory).create(recursive: true);
      } catch (e) {
        lastNotice = null;
        lastError = 'Could not create the default data folder '
            '"$selectedDirectory": $e';
        debugPrint('  ❌ $lastError');
        FileLogger.error('Default data folder creation failed',
            error: e, source: 'DataPathResolver');
        return false;
      }
    } else {
      selectedDirectory = result;
    }

    // Decide the final data root (no filesystem changes yet).
    final String dataRoot;
    final Directory probeDir; // existing directory used for the write test
    final bool isExisting;

    if (isBayaaDataFolder(selectedDirectory)) {
      // Case 1: User selected a folder that IS the BayaaData folder itself
      debugPrint('  📂 User selected the BayaaData folder directly - using it as-is');
      dataRoot = selectedDirectory;
      probeDir = Directory(selectedDirectory);
      isExisting = true;
    } else if (hasExistingData(selectedDirectory)) {
      // Case 2: User selected a parent folder that already contains BayaaData
      dataRoot = path.join(selectedDirectory, 'BayaaData');
      debugPrint('  📂 Found existing BayaaData in selected folder: $dataRoot');
      probeDir = Directory(dataRoot);
      isExisting = true;
    } else {
      // Case 3: Fresh folder - create BayaaData inside it
      dataRoot = path.join(selectedDirectory, 'BayaaData');
      probeDir = Directory(selectedDirectory);
      isExisting = false;
    }

    // Write-test BEFORE saving config or creating any structure.
    try {
      await _verifyWritable(probeDir);
    } catch (e) {
      lastNotice = null;
      lastError = 'Cannot write to "${probeDir.path}". '
          'Please choose a folder you have write access to. ($e)';
      debugPrint('  ❌ $lastError');
      FileLogger.error('Data path write test failed',
          error: e, source: 'DataPathResolver');
      return false;
    }

    try {
      if (!isExisting) {
        await Directory(dataRoot).create(recursive: true);
      }

      await _saveDataRootPath(dataRoot);
      _dataRootPath = dataRoot;

      // Ensure any missing subdirectories are created
      await _createDirectoryStructure();
    } catch (e, stack) {
      lastNotice = null;
      lastError = 'Failed to set up the data folder at "$dataRoot": $e';
      debugPrint('  ❌ $lastError');
      FileLogger.error('Data folder setup failed',
          error: e, stackTrace: stack, source: 'DataPathResolver');
      return false;
    }

    return true;
  }

  /// Migrate data to a new location.
  /// Returns true if migration was successful.
  Future<bool> migrateData(String newParentPath) async {
    if (_dataRootPath == null) {
      debugPrint('  ❌ Cannot migrate: no current data root path');
      return false;
    }

    final oldDataRoot = _dataRootPath!;
    final newDataRoot = path.join(newParentPath, 'BayaaData');

    // Don't migrate to the same location
    if (path.normalize(oldDataRoot) == path.normalize(newDataRoot)) {
      debugPrint('  ℹ️ Source and destination are the same. No migration needed.');
      return true;
    }

    // Check if destination already has data
    if (await Directory(newDataRoot).exists()) {
      final dbFile = File(path.join(newDataRoot, 'db', 'sales.db'));
      if (await dbFile.exists()) {
        debugPrint('  ⚠️ Destination already contains data. Migration cancelled.');
        return false;
      }
    }

    try {
      debugPrint('  📦 Starting data migration...');
      debugPrint('  📂 From: $oldDataRoot');
      debugPrint('  📂 To: $newDataRoot');
      FileLogger.info('Starting data migration from $oldDataRoot to $newDataRoot', source: 'DataPathResolver');

      // Create destination
      await Directory(newDataRoot).create(recursive: true);

      // Copy all files recursively
      await _copyDirectory(Directory(oldDataRoot), Directory(newDataRoot));

      // Also move backup folder
      final oldBackupPath = path.join(path.dirname(oldDataRoot), 'BayaaBackup');
      final newBackupPath = path.join(newParentPath, 'BayaaBackup');
      if (await Directory(oldBackupPath).exists()) {
        await Directory(newBackupPath).create(recursive: true);
        await _copyDirectory(Directory(oldBackupPath), Directory(newBackupPath));
        debugPrint('  ✅ Backup folder migrated');
      }

      // Update config to new path
      await _saveDataRootPath(newDataRoot);
      _dataRootPath = newDataRoot;

      // Clean up old data (after successful migration)
      try {
        await Directory(oldDataRoot).delete(recursive: true);
        if (await Directory(oldBackupPath).exists()) {
          await Directory(oldBackupPath).delete(recursive: true);
        }
        debugPrint('  🗑️ Old data cleaned up');
      } catch (e) {
        debugPrint('  ⚠️ Could not delete old data (not critical): $e');
        FileLogger.warning('Could not delete old data after migration', error: e, source: 'DataPathResolver');
      }

      debugPrint('  ✅ Data migration completed successfully');
      FileLogger.info('Data migration completed successfully to $newDataRoot', source: 'DataPathResolver');
      return true;
    } catch (e, stack) {
      debugPrint('  ❌ Data migration failed: $e');
      FileLogger.error('Data migration failed', error: e, stackTrace: stack, source: 'DataPathResolver');

      // Remove the half-copied destination so it can't trip the
      // "Destination already contains data" guard on the next attempt.
      try {
        if (await Directory(newDataRoot).exists()) {
          await Directory(newDataRoot).delete(recursive: true);
        }
      } catch (_) {}

      return false;
    }
  }

  /// Copy directory recursively
  Future<void> _copyDirectory(Directory source, Directory destination) async {
    await for (final entity in source.list(recursive: false)) {
      final newPath = path.join(destination.path, path.basename(entity.path));

      if (entity is File) {
        await entity.copy(newPath);
      } else if (entity is Directory) {
        final newDir = Directory(newPath);
        await newDir.create(recursive: true);
        await _copyDirectory(entity, newDir);
      }
    }
  }

  Future<void> _saveDataRootPath(String rootPath) async {
    final config = {_dataRootKey: rootPath};

    final tempFile = File('${_systemConfigFile!.path}.tmp');
    await tempFile.writeAsString(jsonEncode(config));
    await tempFile.rename(_systemConfigFile!.path);
  }

  Future<void> _createDirectoryStructure() async {
    if (_dataRootPath == null) {
      throw StateError('Data root path not set');
    }

    final directories = [
      'config',
      'ledger',
      'ledger/archived',
      'db',
      'checkpoints',
      'logs',
      'assets',
    ];

    for (final dir in directories) {
      final fullPath = path.join(_dataRootPath!, dir);
      await Directory(fullPath).create(recursive: true);
    }

    // Create backup directory outside data root
    await Directory(backupsPath).create(recursive: true);
  }

  String get dataRootPath {
    if (_dataRootPath == null) {
      throw StateError('Data root path not initialized');
    }
    return _dataRootPath!;
  }

  String get configPath => path.join(dataRootPath, 'config');
  String get ledgerPath => path.join(dataRootPath, 'ledger');
  String get ledgerArchivedPath => path.join(dataRootPath, 'ledger', 'archived');
  String get databasePath => path.join(dataRootPath, 'db');
  String get checkpointsPath => path.join(dataRootPath, 'checkpoints');

  /// Default backup location (sibling of BayaaData, same drive). The backup
  /// UI should let the user pick a different drive.
  String get backupsPath {
    final parentDir = path.dirname(dataRootPath);
    return path.join(parentDir, 'BayaaBackup');
  }

  String get logsPath => path.join(dataRootPath, 'logs');
  String get assetsPath => path.join(dataRootPath, 'assets');

  String get mainDatabaseFile => path.join(databasePath, 'sales.db');
  String get configFile => path.join(configPath, 'bayaa.json');
}