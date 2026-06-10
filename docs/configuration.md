# Configuration Reference

Hermes Community Edition uses a simple local environment file for MVP configuration.

## `.env`

The installer creates `.env` in the repo root. This file is ignored by Git.

Example:

```text
OPENROUTER_API_KEY=your-key-here
OPENROUTER_BASE_URL=https://openrouter.ai/api/v1
OPENROUTER_MODEL=openrouter/owl-alpha
OPENROUTER_HTTP_REFERER=https://github.com/zebadee2kk/hermes-community-edition
OPENROUTER_APP_TITLE=Hermes Community Edition
INSTALL_HERMES_DESKTOP=false
```

## Required settings

### `OPENROUTER_API_KEY`

The user's own OpenRouter API key.

Do not commit this value.

### `OPENROUTER_BASE_URL`

Default:

```text
https://openrouter.ai/api/v1
```

This is the OpenAI-compatible OpenRouter API base URL.

### `OPENROUTER_MODEL`

Default:

```text
openrouter/owl-alpha
```

This is the default model target for the community edition bootstrap.

## Optional settings

### `OPENROUTER_HTTP_REFERER`

Optional app metadata used by some OpenRouter-compatible clients.

Default:

```text
https://github.com/zebadee2kk/hermes-community-edition
```

### `OPENROUTER_APP_TITLE`

Optional app title metadata.

Default:

```text
Hermes Community Edition
```

### `INSTALL_HERMES_DESKTOP`

Future installer flag for optional Hermes Desktop installation.

Default:

```text
false
```

## Hermes config template

See:

```text
bootstrap/templates/hermes-config.yaml
```

This template is intentionally generic because exact Hermes configuration locations can vary by installation method and version.

## Configuration priority

Recommended future priority order:

1. Explicit installer flags.
2. Existing user Hermes config.
3. Local `.env`.
4. Project defaults.

## Safety notes

- Never commit `.env`.
- Never paste API keys into GitHub issues.
- Prefer provider-side spending limits where available.
- Treat free model/provider availability as changeable.
