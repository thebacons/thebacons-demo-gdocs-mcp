#!/bin/bash
set -e
echo "---- GIT ENVIRONMENT DIAGNOSTIC ----"
echo "User: $(whoami)"
echo "Current directory: $(pwd)"
git --version
git config user.name || echo "Not set"
git config user.email || echo "Not set"
git remote -v
git branch -vv
echo "Creating local test branch: 'test-branch-ai-perms'"
git checkout -b test-branch-ai-perms
git checkout main || git checkout -b main
git branch -D test-branch-ai-perms
git push --dry-run origin main
echo "---- END OF TEST ----"
