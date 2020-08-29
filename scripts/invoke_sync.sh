#! /bin/bash

if pgrep -x "rclone" > /dev/null; then
  exit 1
fi

rclone sync lyd-gphotos:media/by-year /mnt/fs2/Google/Lydia/Photos/ --gphotos-read-only
rclone sync jer-gphotos:media/by-year /mnt/fs2/Google/Jeremy/Photos/ --gphotos-read-only
rclone sync jl-gphotos:media/by-year /mnt/fs2/Google/J\&L/Photos/ --gphotos-read-only
