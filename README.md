# Hermes Community Edition

A free, beginner-friendly bootstrap for running Hermes with OpenRouter Owl Alpha.

**Goal:** download or clone this repo, create your own OpenRouter API key, paste it into the installer, and run a Hermes agent without needing a GPU, server, or coding knowledge.

## What this does

- Installs or checks local prerequisites.
- Guides the user to create a free OpenRouter account and API key.
- Configures Hermes to use OpenRouter.
- Sets the default model to `openrouter/owl-alpha`.
- Runs a smoke test.
- Provides optional cloud deployment notes for always-on use.

## What this does not do

- It does **not** create an OpenRouter accounts automatically.
- It does **not** generate or store API keys in this GitHub repo.
- It does **not** guarantee that third-party free model access will remain free forever.
- It is not yet a production business automation appliance.

## Quick start

### Linux/macOS

```bash
git clone https://github.com/zebadee2kk/hermes-community-edition.git
cd hermes-community-edition
./installers/linux/install.sh
```

macOS users can also run:

```bash
./installers/macos/install.sh
```

### Windows PowerShell

```powershell
git clone https://github.com/zebadee2kk/hermes-community-edition.git
cd hermes-community-edition
.\installers\windows\install.ps1
```

## OpenRouter setup

During setup you will be asked to create an OpenRouter account and API key:

- Account: https://openrouter.ai
- API keys: https://openrouter.ai/settings/keys
- Model: `openrouter/owl-alpha`
- Base URL: `https://openrouter.ai/api/v1`

## Install options

| Option | Cost | Status | Best for |
| --- | --- | --- | --- |
| Local CLI install | Free | MVP | Technical users |
| Windows/macOS GUI installer | Free | Planned | Non-technical users |
| DigitalOcean VPS | Very cheap / trial-credit | Planned | Always-on agent |
| Oracle Free Tier | Potentially free | Planned | Tinkerers |
| Cloudflare Lite | Free experimental | Research | Stateless simple agents |

## MVP status

This repo is currently an MVP scaffold. The first target is a reliable CLI bootstrap on Linux, macOS, and Windows. GUI installers and cloud automation come later.

## Privacy warning

Free hosted models may have different data handling characteristics from paid/private models. Do not send secrets, credentials, private client data, or sensitive personal data to any hosted model unless you have reviewed the provider terms and understand the implications.

See [docs/privacy-and-data.md](docs/privacy-and-data.md).

## Roadmap

- [ ] Harden Linux/macOS installer.
- [ ] Harden Windows PowerShell installer.
- [ ] Add Hermes config detection for common install locations.
- [ ] Add smoke test against OpenRouter.
- [ ] Add GUI installer proof of concept.
- [ ] Add signed Windows/macOS releases.
- [ ] Add DigitalOcean deployment guide.
- [ ] Add Oracle Free Tier guide.
- [ ] Add Cloudflare Lite research prototype.

## License

MIT License. See [LICENSE](LICENSE).
