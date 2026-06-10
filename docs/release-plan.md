# Release Plan

This document defines how Hermes Community Edition should be released as it matures.

## Versioning

Use semantic-ish versions:

```text
v0.1.0 - first CLI MVP
v0.2.0 - improved config detection and validation
v0.3.0 - first GUI installer alpha
v0.4.0 - first cloud deployment alpha
v1.0.0 - stable beginner-friendly local installer
```

## Release artefacts

### MVP releases

Early releases may include only source downloads and scripts.

```text
Source zip
Source tar.gz
```

### Future desktop releases

Planned artefacts:

```text
Hermes-Community-Edition-Setup.exe
Hermes-Community-Edition.dmg
Hermes-Community-Edition.AppImage
checksums.txt
```

## Release checklist

Before a release:

- [ ] README is accurate.
- [ ] Docs links are valid.
- [ ] No local `.env` files are committed.
- [ ] Installer scripts pass static checks.
- [ ] Linux install path has been tested.
- [ ] macOS install path has been tested where relevant.
- [ ] Windows install path has been tested where relevant.
- [ ] Privacy/cost warnings are current.
- [ ] Known limitations are documented.

## Signing and trust

Before distributing to non-technical users, prioritise:

- Windows code signing.
- macOS notarisation.
- Checksums for downloads.
- Clear release notes.
- Links back to source code.

## Release notes template

```text
## Hermes Community Edition vX.Y.Z

### What's new

### Fixed

### Known limitations

### Tested platforms

### Upgrade notes
```

## Pre-1.0 warning

Until v1.0, releases should be described as preview, alpha, beta, or MVP builds.
