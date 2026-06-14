#!/usr/bin/env bash
# Hermes Community Edition — Installer (Linux/macOS)
# Usage: ./scripts/install.sh [--with-ollama] [--port 8080]

set -euo pipefail

HERMES_DIR="${HERMES_INSTALL_DIR:-$HOME/.hermes-community}"
HERMES_VERSION="1.0.0"
WITH_OLLAMA=false
GATEWAY_PORT=8080

# Parse args
while [[ $# -gt 0 ]]; do
  case "$1" in
    --with-ollama) WITH_OLLAMA=true; shift ;;
    --port) GATEWAY_PORT="$2"; shift 2 ;;
    *) echo "Unknown option: $1"; exit 1 ;;
  esac
done

echo "╔══════════════════════════════════════════╗"
echo "║  Hermes Community Edition v${HERMES_VERSION}        ║"
echo "║  Self-hosted AI agent platform           ║"
echo "╚══════════════════════════════════════════╝"
echo ""

# Check prerequisites
echo "Checking prerequisites..."
for cmd in docker curl; do
  if ! command -v "$cmd" &>/dev/null; then
    echo "ERROR: $cmd is required but not installed."
    echo "  Install: https://docs.docker.com/get-docker/"
    exit 1
  fi
done

# Check Docker Compose
if docker compose version &>/dev/null; then
  COMPOSE_CMD="docker compose"
elif command -v docker-compose &>/dev/null; then
  COMPOSE_CMD="docker-compose"
else
  echo "ERROR: Docker Compose is required."
  exit 1
fi

echo "✅ Docker found: $(docker --version)"
echo "✅ Docker Compose found: $($COMPOSE_CMD --version)"

# Create installation directory
echo ""
echo "Installing to: $HERMES_DIR"
mkdir -p "$HERMES_DIR"

# Copy files
echo "Copying files..."
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cp "$SCRIPT_DIR/docker-compose.yml" "$HERMES_DIR/"
cp "$SCRIPT_DIR/.env.example" "$HERMES_DIR/.env"
cp -r "$SCRIPT_DIR/dashboard" "$HERMES_DIR/" 2>/dev/null || true
cp -r "$SCRIPT_DIR/skills" "$HERMES_DIR/" 2>/dev/null || true

# Configure port
sed -i.bak "s/HERMES_GATEWAY_PORT=8080/HERMES_GATEWAY_PORT=$GATEWAY_PORT/" "$HERMES_DIR/.env"

# Start services
echo ""
echo "Starting Hermes..."
cd "$HERMES_DIR"

if [ "$WITH_OLLAMA" = true ]; then
  $COMPOSE_CMD --profile with-ollama up -d
else
  $COMPOSE_CMD up -d
fi

# Wait for health
echo ""
echo "Waiting for Hermes Gateway to start..."
for i in $(seq 1 30); do
  if curl -sf "http://localhost:$GATEWAY_PORT/health" &>/dev/null; then
    echo "✅ Hermes Gateway is healthy!"
    break
  fi
  sleep 2
done

echo ""
echo "╔══════════════════════════════════════════╗"
echo "║  🎉 Hermes is ready!                     ║"
echo "║                                          ║"
echo "║  Dashboard: http://localhost:3000        ║"
echo "║  Gateway:   http://localhost:$GATEWAY_PORT"
echo "║                                          ║"
echo "║  Stop:  cd $HERMES_DIR && $COMPOSE_CMD down"
echo "║  Logs:  cd $HERMES_DIR && $COMPOSE_CMD logs -f"
echo "╚══════════════════════════════════════════╝"
