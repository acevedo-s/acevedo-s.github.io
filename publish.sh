#!/usr/bin/env bash

set -euo pipefail

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 GITHUB_USERNAME"
  exit 1
fi

USERNAME="$1"
REMOTE_URL="git@github.com:${USERNAME}/${USERNAME}.github.io.git"

if [ ! -d .git ]; then
  git init
fi

if git remote get-url origin >/dev/null 2>&1; then
  git remote set-url origin "$REMOTE_URL"
else
  git remote add origin "$REMOTE_URL"
fi

git add .
git commit -m "Initial GitHub Pages profile site" || true
git branch -M main
git push -u origin main

echo "Published to https://${USERNAME}.github.io"
