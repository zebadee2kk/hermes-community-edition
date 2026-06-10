# Roadmap

This roadmap keeps the project focused on a simple, honest community bootstrap before expanding into installers and cloud deployment.

## Phase 0 — Public repo foundation

Status: mostly complete.

- [x] Public repo created.
- [x] README expanded.
- [x] MIT license present.
- [x] `.gitignore` added.
- [x] `.env.example` added.
- [x] Basic docs added.
- [x] Installer script placeholders added.
- [x] GitHub issue and PR templates added.
- [x] Static checks workflow added.

## Phase 1 — CLI bootstrap MVP

Goal: make the command-line install path reliable on Linux, macOS, and Windows.

- [ ] Validate Linux installer end to end.
- [ ] Validate macOS installer end to end.
- [ ] Validate Windows PowerShell installer end to end.
- [ ] Confirm exact Hermes config path and provider settings.
- [ ] Add safe validation/smoke-test command.
- [ ] Add uninstall helper scripts.
- [ ] Add platform-specific screenshots.
- [ ] Create v0.1 release.

## Phase 2 — Documentation hardening

Goal: make the repo understandable to beginners.

- [ ] Add screenshots for OpenRouter account/key creation.
- [ ] Add short video/GIF walkthrough.
- [ ] Add beginner FAQ.
- [ ] Add common install failure examples.
- [ ] Add cost explanation page.
- [ ] Add privacy checklist.
- [ ] Add contributor setup guide.

## Phase 3 — Desktop installer MVP

Goal: create a GUI wrapper for non-technical users.

- [ ] Choose Tauri, Electron, or another GUI packaging approach.
- [ ] Create first-run wizard.
- [ ] Add API key masked input.
- [ ] Write local config from GUI.
- [ ] Add installer build workflow.
- [ ] Produce unsigned test builds.
- [ ] Add Windows code-signing plan.
- [ ] Add macOS notarisation plan.

## Phase 4 — Cloud deployment MVP

Goal: create an always-on cheap/free-tier route.

- [ ] Add DigitalOcean cloud-init template.
- [ ] Add DigitalOcean install script.
- [ ] Add systemd service file.
- [ ] Add UFW hardening helper.
- [ ] Add Oracle Free Tier guide.
- [ ] Validate minimum RAM/CPU requirements.
- [ ] Add optional Tailscale guide.

## Phase 5 — Cloudflare Lite research

Goal: determine whether a lightweight stateless agent route is useful.

- [ ] Define Cloudflare Lite scope.
- [ ] Build Worker proof of concept.
- [ ] Add KV/D1 storage example.
- [ ] Add queue-triggered automation example.
- [ ] Document limitations compared with full Hermes.

## Phase 6 — Community release

Goal: make the project public-friendly.

- [ ] Add website/landing page.
- [ ] Add releases with checksums.
- [ ] Add signed installers.
- [ ] Add demo examples.
- [ ] Add community support labels.
- [ ] Add security policy.
