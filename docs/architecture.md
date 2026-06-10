# Architecture

Hermes Community Edition is designed as a thin bootstrap layer around Hermes and OpenRouter.

## High-level architecture

```text
User device
  |
  | runs installer
  v
Hermes Community Edition bootstrap
  |
  | writes local config
  v
Hermes
  |
  | OpenAI-compatible API call
  v
OpenRouter
  |
  | selected model
  v
openrouter/owl-alpha
```

## Components

### Installer scripts

Located in:

```text
installers/linux/install.sh
installers/macos/install.sh
installers/windows/install.ps1
```

Responsibilities:

- Explain the setup flow.
- Direct the user to OpenRouter.
- Ask for the user's own API key.
- Write `.env` locally.
- Set the default model and base URL.
- Optionally call an upstream Hermes installer where supported.

### Environment configuration

Local `.env` file:

```text
OPENROUTER_API_KEY=...
OPENROUTER_BASE_URL=https://openrouter.ai/api/v1
OPENROUTER_MODEL=openrouter/owl-alpha
```

This file is not committed to Git.

### Templates

Located in:

```text
bootstrap/templates/
```

Templates provide examples of expected OpenRouter and Hermes-compatible settings.

### Hermes

Hermes is the agent runtime. This repo does not vendor Hermes itself. It configures the user's environment so Hermes can use OpenRouter.

### OpenRouter

OpenRouter provides an OpenAI-compatible API route to the selected hosted model.

### Owl Alpha

The default model target is:

```text
openrouter/owl-alpha
```

The project should keep this configurable because model availability and pricing can change.

## Deployment modes

### Local mode

The user runs Hermes on their own PC or laptop.

Pros:

- Free infrastructure.
- Simple.
- No server maintenance.

Cons:

- Only available when the user's machine is on.
- Less suitable for always-on automations.

### Desktop installer mode

A future GUI wrapper around the same bootstrap logic.

Pros:

- Better for non-technical users.
- One-click installation flow.

Cons:

- Requires packaging, signing, and update management.

### VPS mode

Hermes runs on a small cloud server.

Pros:

- Always on.
- Accessible remotely.
- Better for scheduled automations.

Cons:

- Usually not permanently free.
- Requires SSH, firewall, patching, and provider account management.

### Cloudflare Lite mode

A research path for stateless agents on Workers.

Pros:

- Potentially free.
- Highly scalable for simple request/response workflows.

Cons:

- Not equivalent to a long-running Hermes process.
- Requires a separate architecture.

## Security boundaries

- The repo contains only templates and scripts.
- The user's API key stays local.
- `.env` is ignored by Git.
- Production use needs stronger data governance and provider review.
