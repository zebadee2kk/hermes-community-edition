# Free vs Cheap Deployment Options

This project should be honest about cost.

## Free local install

Best default path.

- Runs on the user's own computer.
- No cloud server required.
- No GPU required when using a hosted model.
- Uses the user's own OpenRouter API key.

## Free hosted experiments

Possible, but not the same as a full always-on Hermes process.

Examples:

- Cloudflare Workers for lightweight stateless agent endpoints.
- Cloudflare KV or D1 for simple state.

This is better treated as a research track called `Cloudflare Lite`.

## Trial-credit cloud

Some VPS providers offer trial credits for new users. This can feel free at first but is not a permanent free tier.

Use this wording:

> Run Hermes on a low-cost VPS, using trial credits where available.

Avoid this wording:

> Free permanent cloud hosting.

## Very cheap always-on cloud

A small VPS is the simplest always-on route.

Typical use case:

- Ubuntu server
- Hermes installed as a service
- OpenRouter hosted model
- Tailscale for private access

This should be documented as an advanced option.
