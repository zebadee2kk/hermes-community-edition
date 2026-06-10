$ErrorActionPreference = "Stop"

$RootDir = Resolve-Path (Join-Path $PSScriptRoot "..\..")
$EnvFile = Join-Path $RootDir ".env"

Write-Host ""
Write-Host "Hermes Community Edition - Windows installer"
Write-Host "============================================"
Write-Host ""
Write-Host "This installer will configure Hermes to use OpenRouter Owl Alpha."
Write-Host "Create an OpenRouter account at: https://openrouter.ai"
Write-Host "Create an API key at:        https://openrouter.ai/settings/keys"
Write-Host ""

$OpenRouterApiKey = Read-Host "Paste your OpenRouter API key"

if ([string]::IsNullOrWhiteSpace($OpenRouterApiKey)) {
    Write-Error "No API key entered. Exiting."
    exit 1
}

@"
OPENROUTER_API_KEY=$OpenRouterApiKey
OPENROUTER_BASE_URL=https://openrouter.ai/api/v1
OPENROUTER_MODEL=openrouter/owl-alpha
OPENROUTER_HTTP_REFERER=https://github.com/zebadee2kk/hermes-community-edition
OPENROUTER_APP_TITLE=Hermes Community Edition
INSTALL_HERMES_DESKTOP=false
"@ | Set-Content -Path $EnvFile -Encoding UTF8

Write-Host "Wrote local configuration to $EnvFile"
Write-Host ""
Write-Host "Install Hermes separately if it is not already installed."
Write-Host "Default model: openrouter/owl-alpha"
Write-Host ""
Write-Host "Next: see docs/getting-started.md and docs/troubleshooting.md"
