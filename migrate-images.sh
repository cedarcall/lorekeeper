#!/bin/bash
#
# Migrate images from public/images to persistent storage/app/public/images
# This script should be run once after deployment to move images to persistent storage.
#
# Usage: bash migrate-images.sh
#

set -e

echo "Starting image migration to persistent storage..."

# Create destination directories
mkdir -p storage/app/public/images/characters
mkdir -p storage/app/public/images/character-updates
mkdir -p storage/app/public/images/avatars

# Copy character images if they exist
if [ -d "public/images/characters" ]; then
    echo "Migrating character images..."
    cp -r public/images/characters/* storage/app/public/images/characters/ 2>/dev/null || true
    echo "Character images migrated"
fi

# Copy character update images if they exist
if [ -d "public/images/character-updates" ]; then
    echo "Migrating character update images..."
    cp -r public/images/character-updates/* storage/app/public/images/character-updates/ 2>/dev/null || true
    echo "Character update images migrated"
fi

# Copy avatar images if they exist
if [ -d "public/images/avatars" ]; then
    echo "Migrating avatar images..."
    cp -r public/images/avatars/* storage/app/public/images/avatars/ 2>/dev/null || true
    echo "Avatar images migrated"
fi

echo ""
echo "✓ Image migration complete!"
echo ""
echo "IMPORTANT: Ensure storage/ is mounted as a Docker volume to persist across redeploys."
echo "Add to docker-compose.yml under lorekeeper service volumes:"
echo "  volumes:"
echo "    - lorekeeper_storage:/app/storage"
echo ""
echo "And add volume at root level:"
echo "volumes:"
echo "  lorekeeper_storage:"
