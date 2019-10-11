#!/bin/sh

# Exit if any subcommand fails
set -e

# Gives the circleci user access to all files and folders
sh -c "sudo chown -R circleci *"

# Requires PERCY_TOKEN
if [ -n "$PERCY_TOKEN" ]; then
    echo "✅ Percy Token specified. Continuing..."
else
    echo "🛑 Percy Token not specified."
    echo "🛑 Please add it as a secret for your repo"
fi

# Fallback if workflow hasn't run yarn install yet
if [ -e node_modules/.bin/percy ]; then
    echo "✅ Environment ready. Continuing..."
else
    echo "⏳ Environment not ready. Installing modules..."
    sh -c "yarn install"
fi

# Fallback if workflow hasn't run yarn build yet
if [ -e public/index.html ]; then
    echo "✅ Build ready. Continuing..."
else
    echo "⏳ Build not ready. Building with Yarn..."
    sh -c "yarn build"
fi

# Snapshot with Percy
echo "📷 Snapshotting with Percy..."
sh -c "yarn percy snapshot ./public"
