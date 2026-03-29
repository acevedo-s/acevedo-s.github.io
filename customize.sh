#!/usr/bin/env bash

set -euo pipefail

if [ "$#" -ne 6 ]; then
  echo "Usage: $0 \"Name\" \"Role\" \"Intro\" \"Email\" \"GitHub URL\" \"LinkedIn URL\""
  exit 1
fi

NAME="$1"
ROLE="$2"
INTRO="$3"
EMAIL="$4"
GITHUB_URL="$5"
LINKEDIN_URL="$6"

INDEX_FILE="index.html"

sed -i "s|Your Name|$NAME|g" "$INDEX_FILE"
sed -i "s|Developer, builder, and problem solver\\.|$ROLE|g" "$INDEX_FILE"
sed -i "s|I create reliable digital products with a focus on clarity, performance, and maintainable code\\.|$INTRO|g" "$INDEX_FILE"
sed -i "s|your@email.com|$EMAIL|g" "$INDEX_FILE"
sed -i "s|https://github.com/your-username|$GITHUB_URL|g" "$INDEX_FILE"
sed -i "s|https://www.linkedin.com/in/your-handle|$LINKEDIN_URL|g" "$INDEX_FILE"
sed -i "s|your-username|$(basename "$GITHUB_URL")|g" "$INDEX_FILE"

echo "Updated $INDEX_FILE with your details."
