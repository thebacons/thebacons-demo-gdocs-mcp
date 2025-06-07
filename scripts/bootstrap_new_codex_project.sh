#!/bin/bash
set -e
echo "Bootstrapping Codex project structure..."
mkdir -p scripts mcp_templates .github/workflows
echo "# Add more templates or starter config here." > mcp_templates/README.md
echo "Bootstrap script completed."
