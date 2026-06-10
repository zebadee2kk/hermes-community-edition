#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
ENV_FILE="$ROOT_DIR/.env"

printf "\nHermes Community Edition - Linux installer\n"
printf "=========================================\n\n"

command_exists() {
  command -v "$1" >/dev/null 2>&1
}

if ! command_exists curl; then
  echo "curl is required. Please install curl and re-run this script."
  exit 1
fi

if ! command_exists git; then
  echo "git is recommended. Please install git if the Hermes installer requires it."
fi

echo "This installer will configure Hermes to use OpenRouter Owl Alpha."
echo "Create an OpenRouter account at: https://openrouter.ai"
echo "Create an API key at:        https://openrouter.ai/settings/keys"
echo
read -r -p "Paste your OpenRouter API key: " OPENROUTER_API_KEY

if [ -z "${OPENROUTER_API_KEY}" ]; then
  echo "No API key entered. Exiting."
  exit 1
fi

cat > "$ENV_FILE" <<EOF
OPENROUTER_API_KEY=${OPENROUTER_API_KEY}
OPENROUTER_BASE_URL=https://openrouter.ai/api/v1
OPENROUTER_MODEL=openrouter/owl-alpha
OPENROUTER_HTTP_REFERER=https://github.com/zebadee2kk/hermes-community-edition
OPENROUTER_APP_TITLE=Hermes Community Edition
INSTALL_HERMES_DESKTOP=false
EOF
chmod 600 "$ENV_FILE"

echo "Wrote local configuration to $ENV_FILE"

echo
read -r -p "Install Hermes using the upstream installer now? [y/N]: " INSTALL_HERMES
if [[ "${INSTALL_HERMES}" =~ ^[Yy]$ ]]; then
  curl -fsSL https://hermes-agent.nousresearch.com/install.sh | bash
else
  echo "Skipped Hermes install. Install Hermes separately, then re-run the smoke test."
fi

echo
read -r -p "Run OpenRouter smoke test now? [y/N]: " RUN_TEST
if [[ "${RUN_TEST}" =~ ^[Yy]$ ]]; then
  "$ROOT_DIR/bootstrap/smoke-test.sh"
fi

echo
printf "Done. Default model: openrouter/owl-alpha\n"
