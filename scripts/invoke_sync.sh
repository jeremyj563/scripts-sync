#! /bin/bash

if pgrep -x "rclone" > /dev/null; then
  exit 1
fi

# Google Photos
rclone sync lyd-gphotos:media/by-year /mnt/fs2/Google/Lydia/Photos/ --gphotos-read-only --transfers=1
rclone sync jer-gphotos:media/by-year /mnt/fs2/Google/Jeremy/Photos/ --gphotos-read-only --transfers=1
rclone sync jl-gphotos:media/by-year /mnt/fs2/Google/J\&L/Photos/ --gphotos-read-only --transfers=1

# Google Drive
rclone sync jer-gdrive:/ /mnt/fs2/Google/Jeremy/Drive/ --drive-auth-owner-only --transfers=1
rclone sync jl-gdrive:/ /mnt/fs2/Google/J\&L/Drive/ --drive-auth-owner-only --transfers=1
rclone sync lyd-gdrive:/ /mnt/fs2/Google/Lydia/Drive/ --drive-auth-owner-only --transfers=1
