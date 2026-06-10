# Local Install

The local install is the default and recommended path for Hermes Community Edition.

## Why local first?

Local install is the simplest genuinely free path:

- no VPS bill,
- no GPU requirement,
- no Docker requirement,
- no cloud server management,
- no networking setup.

The user's own computer runs Hermes, while OpenRouter provides the hosted model route.

## Prerequisites

Recommended:

- Git
- curl
- Bash on Linux/macOS
- PowerShell on Windows
- A free OpenRouter account
- An OpenRouter API key

## Linux

```bash
git clone https://github.com/zebadee2kk/hermes-community-edition.git
cd hermes-community-edition
chmod +x installers/linux/install.sh
./installers/linux/install.sh
```

## macOS

```bash
git clone https://github.com/zebadee2kk/hermes-community-edition.git
cd hermes-community-edition
chmod +x installers/macos/install.sh
./installers/macos/install.sh
```

## Windows

Open PowerShell:

```powershell
git clone https://github.com/zebadee2kk/hermes-community-edition.git
cd hermes-community-edition
.\installers\windows\install.ps1
```

If PowerShell blocks the script, see [troubleshooting](troubleshooting.md).

## What the installer writes

The installer creates `.env` in the repo root:

```text
OPENROUTER_API_KEY=your-key
OPENROUTER_BASE_URL=https://openrouter.ai/api/v1
OPENROUTER_MODEL=openrouter/owl-alpha
OPENROUTER_HTTP_REFERER=https://github.com/zebadee2kk/hermes-community-edition
OPENROUTER_APP_TITLE=Hermes Community Edition
INSTALL_HERMES_DESKTOP=false
```

## After install

1. Confirm `.env` exists.
2. Confirm Hermes is installed.
3. Confirm Hermes can read the OpenRouter settings.
4. Start Hermes.
5. Ask a simple test question.

## Limitations

The MVP does not yet automatically detect every Hermes config path. If your Hermes install uses a different config location, copy the values from `.env` into the appropriate Hermes config.
