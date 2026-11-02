# Arabic language disabled

The application UI is configured to run in English only.

## What changed

- `lib/main.dart` pins the app locale to English and advertises only English as a supported app locale.
- `lib/core/localization/locale_provider.dart` defaults to English, ignores saved Arabic preferences, normalizes the stored preference to English, and refuses attempts to switch away from English.
- `lib/features/auth/presentation/login_screen.dart` no longer shows a language switch.
- `l10n.yaml` now uses the English ARB as its localization template.
- `README.md` describes the current English-only UI.

Arabic translation source and generated files remain in `lib/l10n/` as dormant resources. The English-only locale list and fixed English locale keep them out of the running app; keeping the files makes a future re-enable straightforward. Conditional Arabic strings elsewhere in the UI are unreachable while the locale is fixed to English.

Legacy installations may already have `language.txt` set to `ar` in their configured application data directory. The locale provider ignores that value and attempts to rewrite it to `en` when it loads, so old preferences do not restore Arabic.

## Re-enable later

To restore Arabic in a future release, update the locale provider, app-level supported locale list, login language control, and localization generation configuration together. Then regenerate localizations and review any RTL-sensitive screens and PDF output. See `WINDOWS_EXE_CLIENT_GUIDE.md` for packaging the English-only Windows build.
