#! /bin/bash

if pgrep -x "rclone" > /dev/null; then
  exit 1
fi

# Google Photos
rclone sync lyd-gphotos:media/by-year /mnt/fs2/Google/Lydia/Photos/ --gphotos-read-only
rclone sync jer-gphotos:media/by-year /mnt/fs2/Google/Jeremy/Photos/ --gphotos-read-only
rclone sync jl-gphotos:media/by-year /mnt/fs2/Google/J\&L/Photos/ --gphotos-read-only

# Google Drive
rclone sync jer-gdrive:/ /mnt/fs2/Google/Jeremy/Drive/ --drive-auth-owner-only
rclone sync jl-gdrive:/ /mnt/fs2/Google/J\&L/Drive/ --drive-auth-owner-only
rclone sync lyd-gdrive:/ /mnt/fs2/Google/Lydia/Drive/ --drive-auth-owner-only
