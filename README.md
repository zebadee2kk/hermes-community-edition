# Hermes Community Edition

A free, beginner-friendly bootstrap for running Hermes with OpenRouter Owl Alpha.

**Goal:** clone the repo or download an installer, create your own OpenRouter API key, paste it into the setup flow, and run a useful Hermes agent without needing a GPU, cloud server, or coding knowledge.

## Current status

This repo is an MVP foundation. The CLI installers and documentation scaffold are in place. GUI installers, fully automated cloud deployment, and production hardening are planned next.

## What this project is

Hermes Community Edition is a public starter kit for people who want a low-friction Hermes setup.

It focuses on three paths:

1. **Free local install** — runs on the user's own machine.
2. **One-click desktop installers** — planned Windows/macOS packaging for non-technical users.
3. **Cheap or free-tier cloud deployment** — planned always-on deployment for users who want a server-hosted agent.

## What this does

- Guides the user through creating their own OpenRouter account and API key.
- Writes local OpenRouter configuration to `.env`.
- Sets the default model to `openrouter/owl-alpha`.
- Provides Linux, macOS, and Windows bootstrap scripts.
- Provides clear docs for local, desktop, and cloud deployment paths.
- Keeps secrets out of the public repo.

## What this does not do

- It does **not** create OpenRouter accounts automatically.
- It does **not** generate or store API keys in GitHub.
- It does **not** bypass provider terms, limits, or billing controls.
- It does **not** guarantee that third-party free model access will remain free forever.
- It is not yet a production business automation appliance.

## Quick start

### Linux

```bash
git clone https://github.com/zebadee2kk/hermes-community-edition.git
cd hermes-community-edition
chmod +x installers/linux/install.sh
./installers/linux/install.sh
```

### macOS

```bash
git clone https://github.com/zebadee2kk/hermes-community-edition.git
cd hermes-community-edition
chmod +x installers/macos/install.sh
./installers/macos/install.sh
```

### Windows PowerShell

```powershell
git clone https://github.com/zebadee2kk/hermes-community-edition.git
cd hermes-community-edition
.\installers\windows\install.ps1
```

## OpenRouter setup

During setup, the user is asked to create an OpenRouter account and API key:

- Account: https://openrouter.ai
- API keys: https://openrouter.ai/settings/keys
- Default model: `openrouter/owl-alpha`
- Base URL: `https://openrouter.ai/api/v1`

The installer writes a local `.env` file. That file is ignored by Git.

## Install options

| Option | Cost target | Status | Best for | Docs |
| --- | --- | --- | --- | --- |
| Local CLI install | Free | MVP | Technical users and early testers | [Local install](docs/local-install.md) |
| Windows/macOS GUI installer | Free | Planned | Non-technical users | [Desktop installer design](docs/desktop-installer-design.md) |
| DigitalOcean VPS | Cheap / trial-credit | Planned | Always-on hosted agent | [DigitalOcean](cloud/digitalocean/README.md) |
| Oracle Free Tier | Potentially free | Planned | Tinkerers and free-tier users | [Oracle Free Tier](cloud/oracle-free-tier/README.md) |
| Cloudflare Lite | Free experimental | Research | Stateless lightweight agents | [Cloudflare Lite](cloud/cloudflare-lite/README.md) |

## Documentation

Start here:

- [Getting started](docs/getting-started.md)
- [Project overview](docs/project-overview.md)
- [Architecture](docs/architecture.md)
- [Local install](docs/local-install.md)
- [OpenRouter account and API key](docs/openrouter-account.md)
- [Configuration reference](docs/configuration.md)
- [Privacy and data handling](docs/privacy-and-data.md)
- [Free vs cheap deployment options](docs/free-vs-cheap-options.md)
- [Desktop installer design](docs/desktop-installer-design.md)
- [Cloud deployment overview](docs/cloud-deployment-overview.md)
- [Roadmap](docs/roadmap.md)
- [Troubleshooting](docs/troubleshooting.md)
- [FAQ](docs/faq.md)
- [Uninstall](docs/uninstall.md)

Maintainers and contributors:

- [Contributing](CONTRIBUTING.md)
- [Maintainer guide](docs/maintainer-guide.md)
- [Release plan](docs/release-plan.md)

## Recommended user journey

For most users:

```text
Clone/download repo
Create OpenRouter account
Create API key
Run installer
Paste API key
Start Hermes
```

For non-technical users later:

```text
Download Windows/macOS installer
Follow first-run wizard
Paste OpenRouter API key
Launch Hermes
```

For always-on users later:

```text
Create small VPS or free-tier VM
Run cloud installer
Paste OpenRouter API key
Run Hermes as a service
Connect privately with Tailscale or SSH
```

## Privacy warning

Free hosted models and free-tier providers may have different privacy, retention, and logging behaviour from paid/private deployments. Do not send secrets, credentials, private client data, or sensitive personal information to any hosted model unless you have reviewed the provider terms and understand the implications.

See [docs/privacy-and-data.md](docs/privacy-and-data.md).

## MVP roadmap

- [x] Public repo scaffold.
- [x] README and documentation index.
- [x] Linux/macOS bootstrap flow.
- [x] Windows PowerShell bootstrap flow.
- [x] OpenRouter/Owl Alpha env template.
- [x] Cloud deployment documentation placeholders.
- [ ] Add validated Hermes config detection.
- [ ] Add safe smoke-test command after review.
- [ ] Add GUI installer proof of concept.
- [ ] Add signed Windows/macOS release process.
- [ ] Add DigitalOcean cloud-init installer.
- [ ] Add Oracle Free Tier guide and installer.
- [ ] Add Cloudflare Lite research prototype.

## License

MIT License. See [LICENSE](LICENSE).
