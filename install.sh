#!/bin/bash
# HTML Design Advisor MCP Installer
# Usage: curl -fsSL https://raw.githubusercontent.com/HappyMonkeyAI/html-design-advisor-mcp/master/install.sh | bash

set -euo pipefail

REPO="HappyMonkeyAI/html-design-advisor-mcp"
REPO_URL="https://github.com/$REPO"
PACKAGE_NAME="html-design-advisor-mcp"

echo "======================================="
echo "HTML Design Advisor MCP Installer"
echo "======================================="
echo ""

# Check for Python 3.11+
echo "Checking Python installation..."
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3.11+ is required but not installed."
    echo "Please install Python 3.11 or higher from https://www.python.org/downloads/"
    exit 1
fi

PYTHON_VERSION=$(python3 -c 'import sys; print(f"{sys.version_info.major}.{sys.version_info.minor}")')
if ! python3 -c 'import sys; exit(0) if sys.version_info >= (3, 11) else exit(1)'; then
    echo "❌ Python 3.11 or higher is required, but you have $PYTHON_VERSION."
    exit 1
fi

echo "✅ Python $PYTHON_VERSION found"

# Check for pip
if ! python3 -m pip --version &> /dev/null; then
    echo "❌ pip is not installed. Please ensure pip is available with Python."
    exit 1
fi

# Install the package from GitHub
echo "Installing HTML Design Advisor MCP from GitHub..."
python3 -m pip install --upgrade pip setuptools wheel
python3 -m pip install "git+https://github.com/HappyMonkeyAI/html-design-advisor-mcp.git@master"

echo ""
echo "======================================="
echo "✅ Installation complete!"
echo "======================================="
echo ""
echo "To use the HTML Design Advisor MCP, add it to your MCP configuration:"
echo ""
echo "Server configuration:"
echo '  {
    "name": "html-design-advisor",
    "command": "python3",
    "args": ["-m", "html_design_advisor"],
    "env": {}
  }'
echo ""
echo "For more information, visit: $REPO_URL"