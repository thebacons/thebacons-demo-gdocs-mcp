#!/bin/bash
set -e

# Ensure required environment variables are set
: "${GITHUB_REPO_NAME:?GITHUB_REPO_NAME is not set}"
: "${GITHUB_ACCOUNT:?GITHUB_ACCOUNT is not set}"

# Configure Git remote using the provided credentials if available
if [ -n "$GITHUB_PAT_KEY" ]; then
  git remote set-url origin "https://${GITHUB_ACCOUNT}:${GITHUB_PAT_KEY}@github.com/${GITHUB_ACCOUNT}/${GITHUB_REPO_NAME}.git"
else
  echo "Warning: GITHUB_PAT_KEY is not set. Git operations may fail."
  git remote set-url origin "https://github.com/${GITHUB_ACCOUNT}/${GITHUB_REPO_NAME}.git"
fi

echo "Environment setup complete."
