# Desktop Installer Design

The desktop installer is the planned non-technical user path for Hermes Community Edition.

## Goal

A user should be able to download a Windows or macOS installer, follow a guided setup wizard, paste their OpenRouter API key, and launch Hermes.

## Recommended approach

Use one cross-platform GUI wrapper around the existing bootstrap core.

Candidate technologies:

- Tauri
- Electron
- Neutralino

Tauri is likely the best first option because it can produce smaller binaries than Electron, but Electron may be easier for contributors.

## Installer outputs

Planned release artefacts:

```text
Hermes-Community-Edition-Setup.exe
Hermes-Community-Edition.dmg
Hermes-Community-Edition.AppImage
```

## Wizard flow

```text
Welcome
  ↓
Choose install type
  - Local install
  - Advanced/cloud docs
  ↓
OpenRouter setup
  - Open account page
  - Open API key page
  - Paste API key
  ↓
Model selection
  - Default: openrouter/owl-alpha
  - Advanced: custom OpenRouter model
  ↓
Hermes install/check
  ↓
Write local config
  ↓
Run validation
  ↓
Launch Hermes / finish
```

## UX requirements

- Plain English copy.
- No hidden cloud costs.
- Clear warning that the user owns their provider account and key.
- Clear indication that Owl Alpha/free access can change.
- Mask API key input.
- Never log the API key.
- Give the user a way to reveal the config path.
- Provide an uninstall/help link at the end.

## Windows packaging

Planned options:

- Tauri NSIS installer
- MSI later if needed
- Optional winget package later

Important:

- Unsigned installers trigger warnings.
- Code signing should be added before broad non-technical distribution.

## macOS packaging

Planned options:

- DMG installer
- Notarised app bundle later
- Homebrew cask later if useful

Important:

- Unsigned macOS apps trigger Gatekeeper warnings.
- Notarisation should be added before broad public release.

## Linux packaging

Planned options:

- AppImage
- deb package
- rpm package later

## Shared bootstrap core

The GUI should not duplicate installation logic. It should call shared scripts or a shared library so CLI and GUI behaviour stay aligned.

Recommended future structure:

```text
app/installer-gui/
packages/bootstrap-core/
installers/
```

## MVP desktop milestone

The first GUI milestone should only do:

- show welcome screen,
- collect OpenRouter key,
- write `.env`,
- show success/failure,
- link to docs.

Do not start by building a full managed agent platform.
