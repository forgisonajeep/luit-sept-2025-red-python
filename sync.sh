#!/usr/bin/env bash
set -e

# Go to repo
cd ~/Documents/GitHub/luit-sept-2025-red-python

echo "🔄 Syncing fork with instructor's repo..."

# Make sure we're on main
git checkout main

# Save any local changes so nothing gets lost
git add -A
git commit -m "WIP: save local changes" || echo "✅ No local changes to commit"

# Pull from instructor (upstream) and update local main
git fetch upstream
git pull --rebase upstream main

# Push to your fork
git push origin main

echo "✅ Sync complete! Your fork is now up to date."
