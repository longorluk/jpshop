# Windows EXE packaging and client handoff

This project is a Flutter Windows desktop app. Flutter produces an executable plus runtime libraries, assets, and plugin files. **Do not send only the `.exe`**: deliver the complete contents of the release directory, or wrap that directory in an installer.

## 1. Build on Windows

Use a Windows 10/11 build machine with:

- Flutter SDK compatible with the Dart constraint in `pubspec.yaml`.
- Visual Studio 2022 with the **Desktop development with C++** workload, including the Windows SDK and MSVC toolchain.
- Git and network access for the initial dependency resolution.

From PowerShell in the project root:

```powershell
flutter doctor -v
flutter clean
flutter pub get
flutter analyze
flutter build windows --release
```

The release directory is:

```text
build\windows\x64\runner\Release\
```

The main executable is currently named `barasa_softwares.exe` (confirm the actual filename in the output directory after each build). The Flutter runner CMake target may affect the generated name; give clients the name that exists in the built folder.

## 2. Verify the release folder

Copy the **entire** `Release` directory to a clean staging folder. Keep all files and subfolders together, including the executable, `data\` directory, Flutter runtime DLL, plugin DLLs, ICU data, and asset files. Do not rename or move individual runtime files.

Run the EXE from that staged folder on a Windows machine that does not have the project checkout. Check that:

1. The app opens in English and the login form works.
2. A test sale, invoice/receipt preview, printing workflow, and restart work as expected.
3. The configured application data location is writable and data survives restart.
4. The client machine has the required Microsoft Visual C++ runtime. If Windows reports a missing runtime DLL, install the current supported Microsoft Visual C++ Redistributable for the matching architecture (normally x64); do not copy random DLLs into the release folder.
5. Antivirus/SmartScreen behavior is understood. For routine client distribution, sign the executable and installer with the organization's code-signing certificate and timestamp the signature.

Use a test store and test records for the staging check. Do not put a real database, backup, credentials, or `lib/secrets.dart` into the release package.

## 3. Prepare the client handoff

For a simple handoff, zip the complete staged release folder and name it with product and version, for example `Barasa-Softwares-1.0.0-Windows-x64.zip`. Include a short client README with:

- Supported Windows version and architecture.
- How to extract the ZIP and launch the EXE.
- Any prerequisite runtime installation instructions.
- Where the app stores data and how to choose a safe, writable data location on first launch.
- How the client should make and verify backups before upgrades or machine changes.
- Your support contact and the delivered version/build number.

For a more polished installation, use an installer such as Inno Setup or WiX to install all release files together, create shortcuts, and offer an uninstall entry. Configure it to preserve the user's application data on uninstall and upgrades. Test the installer on a clean Windows machine before sending it.

## 4. Final release checklist

- [ ] Set and record the intended app version/build number in `pubspec.yaml`.
- [ ] Build `--release` on Windows; do not distribute a debug build.
- [ ] Smoke-test the staged output on a clean Windows machine.
- [ ] Confirm the data directory is writable and backup/restore works before migration.
- [ ] Include every file in the release output directory.
- [ ] Scan the package, sign it where available, and verify the signature.
- [ ] Create a checksum (for example SHA-256) and retain the exact delivered ZIP/installer.
- [ ] Include client launch, data, backup, and support instructions.
- [ ] Keep a copy of the release artifact and build/version notes.

## Important data and upgrade note

The application stores business data locally. The release package should contain application binaries only; client data belongs in the configured data directory, outside the extracted program folder when the app's data-path setup allows it. Before replacing an older client build, have the client close the app and make a verified backup. Never overwrite or delete the client's data directory as part of an upgrade.
