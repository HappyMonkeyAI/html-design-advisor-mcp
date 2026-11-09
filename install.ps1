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

# Install the package from GitHub
Write-Host "Installing HTML Design Advisor MCP from GitHub..."
python -m pip install --upgrade pip setuptools wheel
python -m pip install "git+https://github.com/HappyMonkeyAI/html-design-advisor-mcp.git@master"

Write-Host ""
Write-Host "=======================================" -ForegroundColor Green
Write-Host "✅ Installation complete!" -ForegroundColor Green
Write-Host "=======================================" -ForegroundColor Green
Write-Host ""
Write-Host "To use the HTML Design Advisor MCP, add it to your MCP configuration:" -ForegroundColor Cyan
Write-Host ""
Write-Host "Server configuration:" -ForegroundColor White
Write-Host '  {
    "name": "html-design-advisor",
    "command": "python",
    "args": ["-m", "html_design_advisor"],
    "env": {}
  }' -ForegroundColor Gray
Write-Host ""
Write-Host "For more information, visit: $REPO_URL" -ForegroundColor Cyan