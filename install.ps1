$ErrorActionPreference = "Stop"

$source = Join-Path $PSScriptRoot "feng-ge"
if (-not (Test-Path -LiteralPath (Join-Path $source "pet.json")) -or
    -not (Test-Path -LiteralPath (Join-Path $source "spritesheet.webp"))) {
    throw "Incomplete package: feng-ge must contain pet.json and spritesheet.webp."
}

$codexHome = if ($env:CODEX_HOME) { $env:CODEX_HOME } else { Join-Path $HOME ".codex" }
$petsRoot = Join-Path $codexHome "pets"
$destination = Join-Path $petsRoot "feng-ge"

if (Test-Path -LiteralPath $destination) {
    $timestamp = Get-Date -Format "yyyyMMdd-HHmmss"
    $backup = "$destination.backup-$timestamp"
    Copy-Item -LiteralPath $destination -Destination $backup -Recurse
    Write-Host "Backed up the previous version to: $backup"
}

New-Item -ItemType Directory -Force -Path $destination | Out-Null
Copy-Item -LiteralPath (Join-Path $source "pet.json") -Destination (Join-Path $destination "pet.json") -Force
Copy-Item -LiteralPath (Join-Path $source "spritesheet.webp") -Destination (Join-Path $destination "spritesheet.webp") -Force

$manifest = Get-Content -Raw -Encoding UTF8 -LiteralPath (Join-Path $destination "pet.json") | ConvertFrom-Json
if ($manifest.id -ne "feng-ge" -or $manifest.spriteVersionNumber -ne 2) {
    throw "Installed pet.json validation failed."
}

Write-Host "Feng Ge Codex Pet installed at: $destination"
Write-Host "Restart Codex, or choose Settings > Pets > Refresh."
