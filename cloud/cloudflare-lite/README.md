# Cloudflare Lite

This is a research track for a lightweight free hosted agent pattern.

## Why this is separate

Hermes is normally treated as a longer-running agent process. Cloudflare Workers are stateless and event-driven, so this is not the same as running the full Hermes agent on a server.

## Possible use cases

- Simple webhook agent
- Lightweight research helper
- Stateless chat endpoint
- Queue-triggered automation

## Possible components

- Cloudflare Workers
- Cloudflare KV
- Cloudflare D1
- Cloudflare Queues
- OpenRouter Owl Alpha

## Status

Research only. Not implemented yet.
