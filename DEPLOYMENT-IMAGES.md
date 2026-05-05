# Image Storage Deployment Guide

## Problem
Character images and user profile pictures were breaking after every deployment/reload because they were stored in the ephemeral container filesystem (`public/images/`). When containers restart, these files are lost.

## Solution
Images are now stored in persistent storage at `storage/app/public/images/` which should be mounted as a persistent volume across container restarts.

## Deployment Steps

### 1. Pull Latest Code
```bash
git pull origin main
```

This includes:
- `migrate-images.sh` - Migration script to move images to persistent storage
- Updated image path handling throughout the codebase
- Database migration with species content backfill

### 2. Configure Persistent Storage

#### For Railway Deployment (Recommended):
1. Go to your Railway project dashboard
2. Select your Lorekeeper service
3. Navigate to "Volumes" tab
4. Add a new volume:
   - **Mount Path:** `/app/storage`
   - **Size:** At least 1GB (adjust based on your image storage needs)
5. Deploy the service

#### For Docker Compose Deployment:
Add the following to your `docker-compose.yml`:

```yaml
version: '3.8'
services:
  lorekeeper:
    # ... existing configuration ...
    volumes:
      - lorekeeper_storage:/app/storage
    # ... rest of configuration ...

volumes:
  lorekeeper_storage:
    driver: local
```

### 3. Run Image Migration (One-Time)

After deploying with persistent storage configured, run the migration script:

```bash
# Connect to your container (Railway)
railway run bash

# Or for Docker
docker exec -it lorekeeper bash

# Then run the migration script
bash migrate-images.sh
```

**OR** manually copy images:
```bash
mkdir -p storage/app/public/images/characters
mkdir -p storage/app/public/images/avatars
cp -r public/images/characters/* storage/app/public/images/characters/
cp -r public/images/avatars/* storage/app/public/images/avatars/
```

### 4. Verify Symlink
The storage symlink should already exist. Verify with:
```bash
ls -la public/storage
```

It should show: `public/storage -> ../storage/app/public`

If missing, create it:
```bash
php artisan storage:link
```

### 5. Run Database Migration
```bash
php artisan migrate
```

This will:
- Backfill missing species page content
- Fix any remaining broken getting-started links

## Verification

After deployment:

1. **Check images load:** Visit user profiles and character pages
2. **Check volume is mounted:** Run `df -h | grep storage` in container
3. **Check image files exist:** Run `ls -la storage/app/public/images/characters/0/`

## Troubleshooting

### Images Still Breaking
- **Symptom:** Images load initially but disappear after redeploy
- **Cause:** Storage volume not properly configured
- **Fix:** Verify volume mount is active in Railway dashboard or docker-compose.yml

### Images Not Loading at All
- **Symptom:** Broken image icons on character/profile pages
- **Cause:** Files not migrated or symlink missing
- **Fix:** 
  1. Check files exist: `ls storage/app/public/images/characters/0/`
  2. Check symlink: `ls -la public/storage`
  3. Re-run migration script if needed

### Migration Script Fails
- **Symptom:** `migrate-images.sh` completes but images still in old location
- **Cause:** Permissions or source files missing
- **Fix:**
  1. Check source files exist: `ls public/images/characters/0/`
  2. Check permissions: `chmod +x migrate-images.sh`
  3. Manually copy files using commands in Step 3

## Technical Details

### Image Paths Before & After

**Before (Ephemeral):**
```
public/images/characters/     ← Lost on container restart
public/images/avatars/        ← Lost on container restart
```

**After (Persistent):**
```
storage/app/public/images/characters/  ← Persisted via volume mount
storage/app/public/images/avatars/     ← Persisted via volume mount
```

**Accessed via:**
```
public/storage/images/characters/  ← Symlink to storage/app/public
```

### Code Changes
- Avatar URLs: `/storage/images/avatars/{filename}`
- Character images: `/storage/images/characters/{floor(id/1000)}/{filename}`
- All use `asset()` helper or direct `/storage/` paths in blade templates

## Railway-Specific Notes

Railway volumes persist across:
- ✅ Deployments (git pushes)
- ✅ Container restarts
- ✅ Service rebuilds

Railway volumes are **lost** when:
- ❌ Volume is manually deleted
- ❌ Service is completely removed and recreated

Always maintain backups of user-uploaded images separately.
