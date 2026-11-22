# HTML Design Advisor MCP Installer (Windows)
# Usage: irm https://raw.githubusercontent.com/HappyMonkeyAI/html-design-advisor-mcp/master/install.ps1 | iex

$ErrorActionPreference = "Stop"
$ProgressPreference = "SilentlyContinue"

$REPO = "HappyMonkeyAI/html-design-advisor-mcp"
$REPO_URL = "https://github.com/$REPO"
$PACKAGE_NAME = "html-design-advisor-mcp"

Write-Host "=======================================" -ForegroundColor Cyan
Write-Host "HTML Design Advisor MCP Installer" -ForegroundColor Cyan
Write-Host "=======================================" -ForegroundColor Cyan
Write-Host ""

# Check for Python
Write-Host "Checking Python installation..."
$pythonCmd = $null
if (Get-Command python -ErrorAction SilentlyContinue) {
    $pythonCmd = "python"
} elseif (Get-Command python3 -ErrorAction SilentlyContinue) {
    $pythonCmd = "python3"
} elseif (Get-Command py -ErrorAction SilentlyContinue) {
    $pythonCmd = "py"
}

if (-not $pythonCmd) {
    Write-Host "❌ Python 3.11+ is required but not installed." -ForegroundColor Red
    Write-Host "Please install Python 3.11 or higher from https://www.python.org/downloads/windows/" -ForegroundColor Yellow
    exit 1
}

# Check Python version
$versionOutput = & $pythonCmd -c "import sys; print(f'{sys.version_info.major}.{sys.version_info.minor}')" 2>$null
$major, $minor = $versionOutput -split '\.'

if ([int]$major -lt 3 -or ([int]$major -eq 3 -and [int]$minor -lt 11)) {
    Write-Host "❌ Python 3.11 or higher is required, but you have $versionOutput." -ForegroundColor Red
    exit 1
}

Write-Host "✅ Python $versionOutput found"

# Install into a dedicated user-level virtual environment so pip never targets
# a shared or externally managed interpreter (PEP 668).
Write-Host "Creating virtual environment in $env:LOCALAPPDATA\html-design-advisor\venv..."
$VenvDir = Join-Path $env:LOCALAPPDATA "html-design-advisor\venv"
New-Item -ItemType Directory -Force -Path (Split-Path $VenvDir) | Out-Null

& $pythonCmd -m venv $VenvDir
if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Could not create a virtual environment." -ForegroundColor Red
    exit 1
}

$venvPython = Join-Path $VenvDir "Scripts\python.exe"
Write-Host "Installing HTML Design Advisor MCP from GitHub..."
& $venvPython -m pip install --upgrade pip setuptools wheel
if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Failed to prepare pip in the virtual environment." -ForegroundColor Red
    exit 1
}
& $venvPython -m pip install --upgrade "git+https://github.com/HappyMonkeyAI/html-design-advisor-mcp.git@master"
if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Package installation failed." -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "=======================================" -ForegroundColor Green
Write-Host "✅ Installation complete!" -ForegroundColor Green
Write-Host "=======================================" -ForegroundColor Green
Write-Host ""
Write-Host "To use the HTML Design Advisor MCP, add it to your MCP configuration:" -ForegroundColor Cyan
Write-Host ""
$configPython = $venvPython.Replace('\', '\\')
$configJson = @"
  {
    "name": "html-design-advisor",
    "command": "$configPython",
    "args": ["-m", "html_design_advisor"],
    "env": {}
  }
"@
Write-Host "Server configuration:" -ForegroundColor White
Write-Host $configJson -ForegroundColor Gray
Write-Host ""
Write-Host "For more information, visit: $REPO_URL" -ForegroundColor Cyan