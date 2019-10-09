#!/bin/sh

# Exit if any subcommand fails
set -e

# Requires PERCY_TOKEN
if [ -n "$PERCY_TOKEN" ]; then
    echo "## Percy Token not specified. Action will fail."
else
    echo "## Percy Token specified. Continuing..."
fi

# Setup node modules if needed
if [ -e node_modules/.bin/percy ]; then
    echo "## Environment ready. Continuing..."
else
    echo "## Environment not ready. Installing modules..."
    sh -c "yarn install"
fi

# Build with Yarn
if [ -e node_modules/.bin/percy ]; then
    echo "## Build ready. Continuing..."
else
    echo "## Build not ready. Building with Yarn..."
    sh -c "yarn build"
fi

# Snapshot with Percy
echo "## Snapshotting with Percy..."
sh -c "yarn percy snapshot"
