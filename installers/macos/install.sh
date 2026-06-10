#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"

printf "\nHermes Community Edition - macOS installer\n"
printf "=========================================\n\n"

if ! command -v curl >/dev/null 2>&1; then
  echo "curl is required and should be available on macOS by default."
  exit 1
fi

echo "This uses the same bootstrap flow as Linux, with macOS-friendly messaging."
"$ROOT_DIR/installers/linux/install.sh"
