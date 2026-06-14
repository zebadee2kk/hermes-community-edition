# Hermes Community Edition

**Fully free, self-hosted Hermes deployment with local installers for Windows, Mac, and Linux.**

Hermes Community Edition packages the Hermms agent platform as a one-click install for non-technical users. No cloud dependency, no API keys required — runs entirely on your hardware with optional Ollama local LLM.

## Features

- **One-click installers** — .exe (Windows), .dmg (Mac), .AppImage (Linux)
- **Local-first** — all data stays on your machine
- **Ollama integration** — optional local LLM for fully offline operation
- **Pre-configured skills** — web search, file management, terminal, browser
- **Web dashboard** — manage agents from any browser
- **No API keys required** — works with free local models out of the box

## Quick Start

### Option 1: Installer (recommended)

Download the installer for your platform from [Releases](https://github.com/zebadee2kk/hermes-community-edition/releases).

### Option 2: Docker

```bash
git clone https://github.com/zebadee2kk/hermes-community-edition.git
cd hermes-community-edition
cp .env.example .env
docker compose up -d
# Open http://localhost:3000
```

### Option 3: From source

```bash
git clone https://github.com/zebadee2kk/hermes-community-edition.git
cd hermes-community-edition
./scripts/install.sh
```

## Architecture

```
┌─────────────────────────────────────────┐
│           Hermes Dashboard              │
│         (http://localhost:3000)         │
├─────────────────────────────────────────┤
│           Hermes Gateway                │
│         (http://localhost:8080)         │
├──────────┬──────────┬───────────────────┤
│  Skills  │  Tools   │  Model Providers  │
│          │          │                   │
│ - web    │ - file   │ - Ollama (local)  │
│ - browser│ - term   │ - LM Studio       │
│ - search │ - cron   │ - OpenRouter      │
└──────────┴──────────┴───────────────────┘
```

## Configuration

Copy `.env.example` to `.env` and edit:

```bash
# Model provider (ollama, lmstudio, openrouter)
HERMES_MODEL_PROVIDER=ollama

# Ollama settings (if using local models)
OLLAMA_BASE_URL=http://localhost:11434
OLLAMA_MODEL=llama3

# Optional: OpenRouter for cloud models
# OPENROUTER_API_KEY=sk-or-xxx
```

## System Requirements

| Component | Minimum | Recommended |
|-----------|---------|-------------|
| RAM | 4 GB | 8 GB |
| Disk | 2 GB | 10 GB |
| OS | Windows 10 / macOS 12 / Ubuntu 22.04 | Latest |
| Docker | 24.0+ | Latest |
| Ollama | 0.1.17+ | Latest (optional) |

## Installers

| Platform | Format | Status |
|----------|--------|--------|
| Windows | .exe (NSSS) | ✅ Ready |
| macOS | .dmg | 🔄 In Progress |
| Linux | .AppImage | ✅ Ready |

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for development setup and guidelines.

## License

MIT — see [LICENSE](LICENSE) for details.
