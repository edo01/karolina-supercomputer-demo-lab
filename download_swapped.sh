#!/bin/bash

# Get the local image path and remote video path as command line arguments
remote_swapped_path=$1

#assign a default value to the remote swapped video path
if [ -z "$remote_video_path" ]; then
    remote_swapped_path="swapped_result.mp4"
fi

# Transfer the files to the remote server using scp
scp karolina:/mnt/proj2/dd-24-21/swapfaces/test/output/$remote_swapped_path "$remote_swapped_path"
