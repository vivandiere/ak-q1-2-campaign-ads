#!/bin/bash
# Script to publish this repository to GitHub
# Usage: ./publish-to-github.sh <github-username> <repository-name>

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: ./publish-to-github.sh <github-username> <repository-name>"
    echo "Example: ./publish-to-github.sh georgiethompson ak-q1-2-campaign-ads"
    exit 1
fi

GITHUB_USER=$1
REPO_NAME=$2

echo "Setting up GitHub remote..."
git remote add origin "https://github.com/$GITHUB_USER/$REPO_NAME.git" 2>/dev/null || git remote set-url origin "https://github.com/$GITHUB_USER/$REPO_NAME.git"

echo ""
echo "=========================================="
echo "Next steps:"
echo "=========================================="
echo "1. Create a new repository on GitHub:"
echo "   - Go to https://github.com/new"
echo "   - Repository name: $REPO_NAME"
echo "   - Set to Public or Private (your choice)"
echo "   - DO NOT initialize with README, .gitignore, or license"
echo "   - Click 'Create repository'"
echo ""
echo "2. After creating the repository, run:"
echo "   git push -u origin master"
echo ""
echo "Or if your default branch is 'main', first run:"
echo "   git branch -M main"
echo "   git push -u origin main"
echo "=========================================="

