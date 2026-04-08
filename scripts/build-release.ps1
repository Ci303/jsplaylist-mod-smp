param(
    [string]$OutputDir = ""
)

$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $PSScriptRoot
$packageRoot = Join-Path $repoRoot "package"
$packageDirs = Get-ChildItem -LiteralPath $packageRoot -Directory

if ($packageDirs.Count -ne 1) {
    throw "Expected exactly one package directory under '$packageRoot'."
}

$pkgDir = $packageDirs[0]
$pkgJsonPath = Join-Path $pkgDir.FullName "package.json"

if (-not (Test-Path -LiteralPath $pkgJsonPath)) {
    throw "Missing package.json at '$pkgJsonPath'."
}

$pkg = Get-Content -LiteralPath $pkgJsonPath -Raw | ConvertFrom-Json

if ([string]::IsNullOrWhiteSpace($OutputDir)) {
    $OutputDir = Join-Path $repoRoot "dist"
}

New-Item -ItemType Directory -Force -Path $OutputDir | Out-Null

$safeName = ($pkg.name -replace '[^A-Za-z0-9._-]', '-').Trim('-')
$zipName = "{0}-{1}.zip" -f $safeName, $pkg.version
$zipPath = Join-Path $OutputDir $zipName

if (Test-Path -LiteralPath $zipPath) {
    Remove-Item -LiteralPath $zipPath -Force
}

$staging = Join-Path $OutputDir "_staging"
if (Test-Path -LiteralPath $staging) {
    Remove-Item -LiteralPath $staging -Recurse -Force
}

New-Item -ItemType Directory -Force -Path $staging | Out-Null
Copy-Item -LiteralPath $pkgDir.FullName -Destination $staging -Recurse -Force
Copy-Item -LiteralPath (Join-Path $repoRoot "README.md") -Destination $staging -Force
Copy-Item -LiteralPath (Join-Path $repoRoot "ATTRIBUTION.md") -Destination $staging -Force

Compress-Archive -Path (Join-Path $staging "*") -DestinationPath $zipPath
Remove-Item -LiteralPath $staging -Recurse -Force

Write-Output $zipPath
