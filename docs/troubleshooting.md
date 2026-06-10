# Troubleshooting

## Installer cannot run on Linux/macOS

Make sure the script is executable:

```bash
chmod +x installers/linux/install.sh
chmod +x installers/macos/install.sh
```

Then run it again.

## PowerShell blocks the Windows script

Open PowerShell as your normal user and run:

```powershell
Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
```

Then re-run:

```powershell
.\installers\windows\install.ps1
```

## OpenRouter key does not work

Check:

- The key was copied correctly.
- The `.env` file exists.
- `OPENROUTER_MODEL` is set to `openrouter/owl-alpha`.
- Your OpenRouter account allows access to the selected model.
- You have not accidentally pasted spaces or quotes around the key.

## Hermes is installed but not using Owl Alpha

Check whether Hermes has its own config path that overrides `.env`.

Use `bootstrap/templates/hermes-config.yaml` as a reference and adapt it to your Hermes installation.

## I need always-on access

Use the local install first. Then review:

- `cloud/digitalocean/README.md`
- `cloud/oracle-free-tier/README.md`
- `docs/free-vs-cheap-options.md`
