# Getting Started

Hermes Community Edition helps you run Hermes with OpenRouter Owl Alpha using your own OpenRouter API key.

## 1. Clone the repo

```bash
git clone https://github.com/zebadee2kk/hermes-community-edition.git
cd hermes-community-edition
```

## 2. Create an OpenRouter account

Open:

- https://openrouter.ai
- https://openrouter.ai/settings/keys

Create an API key and keep it private.

## 3. Run the installer

Linux:

```bash
./installers/linux/install.sh
```

macOS:

```bash
./installers/macos/install.sh
```

Windows PowerShell:

```powershell
.\installers\windows\install.ps1
```

## 4. Confirm configuration

The installer creates a local `.env` file with:

```text
OPENROUTER_BASE_URL=https://openrouter.ai/api/v1
OPENROUTER_MODEL=openrouter/owl-alpha
```

The `.env` file is ignored by Git.

## 5. Install or launch Hermes

The Linux/macOS installer can optionally call the upstream Hermes installer. Windows support is currently a guided bootstrap.

## 6. First test

Ask Hermes a simple question and confirm it is using `openrouter/owl-alpha` as the model.

## Notes

This project is intentionally simple. It does not try to create accounts, bypass provider limits, or hide costs. It makes the free path easy while keeping the user in control of their own API key.
