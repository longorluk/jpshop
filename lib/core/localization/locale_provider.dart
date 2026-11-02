import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as path;
import '../data/services/persistence_initializer.dart';

class LocaleProvider extends ChangeNotifier {
  // Arabic is disabled in the application UI; always start in English.
  Locale _locale = const Locale('en');

  Locale get locale => _locale;
  bool get isArabic => false;

  LocaleProvider() {
    _loadPersistedLocale();
  }

  String _getFilePath() {
    if (PersistenceInitializer.persistenceManager != null) {
      final dataRoot = PersistenceInitializer.persistenceManager!.pathResolver.dataRootPath;
      return path.join(dataRoot, 'language.txt');
    }
    return '';
  }

  Future<void> _loadPersistedLocale() async {
    try {
      final filePath = _getFilePath();
      if (filePath.isNotEmpty) {
        final file = File(filePath);
        if (await file.exists()) {
          final lang = (await file.readAsString()).trim();
          // Ignore legacy Arabic preferences and normalize them to English.
          if (lang != 'en') {
            await file.writeAsString('en');
          }
        }
      }
    } catch (e) {
      // Silently ignore load errors
    }
  }

  Future<void> setLocale(Locale locale) async {
    // Keep this provider English-only even if older callers request Arabic.
    final englishLocale = locale.languageCode == 'en'
        ? locale
        : const Locale('en');
    if (_locale != englishLocale) {
      _locale = englishLocale;
      notifyListeners();
    }

    try {
      final filePath = _getFilePath();
      if (filePath.isNotEmpty) {
        final file = File(filePath);
        await file.writeAsString('en');
      }
    } catch (e) {
      // Silently ignore save errors
    }
  }

  void toggleLocale() {
    // Retained for compatibility with any existing callers; Arabic is disabled.
    setLocale(const Locale('en'));
  }
}
