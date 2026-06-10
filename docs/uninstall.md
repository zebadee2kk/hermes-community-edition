# Uninstall

Hermes Community Edition currently creates local configuration only.

## Remove local repo config

From the repo directory:

```bash
rm -f .env
```

Windows PowerShell:

```powershell
Remove-Item .env -ErrorAction SilentlyContinue
```

## Remove cloned repo

Move out of the repo directory, then delete it:

```bash
cd ..
rm -rf hermes-community-edition
```

Windows PowerShell:

```powershell
cd ..
Remove-Item hermes-community-edition -Recurse -Force
```

## Remove Hermes

Hermes itself is installed by the upstream Hermes installer or by the user's existing package manager. Follow the upstream Hermes uninstall guidance for your platform.
