# DigitalOcean Deployment

This is a planned always-on deployment path.

## Positioning

DigitalOcean should be described as low-cost or trial-credit friendly, not permanently free.

## Target architecture

- Ubuntu LTS Droplet
- Hermes installed as a user service
- OpenRouter Owl Alpha as hosted model
- Tailscale optional for private access
- UFW firewall enabled

## Planned flow

1. Create a DigitalOcean account.
2. Create a small Ubuntu Droplet.
3. SSH into the Droplet.
4. Run the cloud installer.
5. Paste your OpenRouter API key.
6. Start Hermes as a service.

## Planned command

```bash
curl -fsSL https://raw.githubusercontent.com/zebadee2kk/hermes-community-edition/main/cloud/digitalocean/install-do.sh | bash
```

## Status

Not implemented yet. Use the local installer first.
