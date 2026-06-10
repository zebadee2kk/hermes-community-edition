# Cloud Deployment Overview

Cloud deployment is for users who want Hermes to be always available.

## Important positioning

The default recommendation is still local install.

Cloud deployment should be described as:

- optional,
- advanced,
- potentially cheap,
- sometimes covered by trial/free-tier credits,
- not guaranteed to be permanently free.

## Deployment options

### DigitalOcean

Best for users who want the simplest VPS path.

Pros:

- Easy UI.
- Predictable small VPS options.
- Good documentation.
- Trial credits may be available for new users.

Cons:

- Not permanently free.
- Requires SSH and server maintenance.

Docs: `cloud/digitalocean/README.md`

### Oracle Free Tier

Best for users specifically chasing permanent free compute where available.

Pros:

- Can be free if capacity and account eligibility are available.
- Good for tinkerers.

Cons:

- Regional capacity can be inconsistent.
- Account setup may be harder for beginners.
- Small instances may be constrained.

Docs: `cloud/oracle-free-tier/README.md`

### Cloudflare Lite

Best for a future lightweight agent endpoint, not a full Hermes server.

Pros:

- Can fit into generous free-tier patterns.
- Useful for simple webhook/request-response agents.

Cons:

- Stateless by default.
- Not equivalent to a full always-on Hermes process.

Docs: `cloud/cloudflare-lite/README.md`

## Target VPS architecture

```text
User
  |
  | SSH / private network
  v
Small VPS
  |
  | runs Hermes as a service
  v
OpenRouter API
  |
  v
openrouter/owl-alpha
```

Recommended components:

- Ubuntu LTS
- non-root user
- UFW firewall
- automatic security updates
- Hermes service
- local `.env` with OpenRouter config
- optional Tailscale private access

## Planned cloud installer flow

```text
SSH into server
Run install script
Create or paste OpenRouter API key
Install Hermes
Write environment file
Create systemd service
Start service
Show status and next steps
```

## Production warning

A cheap VPS is still an internet-connected server. Users should understand patching, SSH keys, firewalling, and provider billing before using it for anything important.
