# Maintainer Guide

This guide is for maintainers of Hermes Community Edition.

## Maintainer responsibilities

- Keep the project honest about cost and limitations.
- Keep secrets out of the repo.
- Review installer changes carefully.
- Avoid over-automating account creation or provider-specific behaviour.
- Keep beginner documentation readable.
- Validate scripts before release.

## Repo hygiene

Recommended standards:

- Small PRs.
- Clear issue titles.
- No direct commits for risky installer changes once contributors are active.
- Use labels for `installer`, `docs`, `cloud`, `desktop`, `security`, and `good first issue`.

## Safety review for installer changes

Before merging installer changes, check:

- Does the script clearly explain what it will do?
- Does it write only to expected local paths?
- Does it avoid logging secrets?
- Does it avoid sending secrets anywhere unexpected?
- Does it fail safely?
- Does it avoid destructive changes?
- Does it work for a non-admin user where possible?

## Documentation review

Before publishing docs, check:

- Does it avoid promising permanent free access when not guaranteed?
- Does it explain provider account ownership?
- Does it link to privacy guidance?
- Does it distinguish MVP, planned, and implemented features?

## Release review

Before creating a release:

- Run static checks.
- Test fresh clone flow.
- Test installer on at least one platform.
- Review `.gitignore` effectiveness.
- Confirm docs match actual behaviour.

## Suggested labels

```text
docs
installer
windows
macos
linux
cloud
desktop-gui
privacy
security
good first issue
help wanted
```

## Suggested branch naming

```text
docs/add-cloud-guide
installer/windows-bootstrap
cloud/digitalocean-systemd
gui/tauri-proof-of-concept
```
