#!/bin/bash

# Get the local image path and remote video path as command line arguments
local_image_path=$1

# Check for the number of arguments and print usage
if [ "$#" -ne 1 ]; then
    echo "Usage: upload_face.sh <local_image_path>"
    exit 1
fi

# Check if the local image exists
if [ ! -f "$local_image_path" ]; then
    echo "Error: The local image does not exist"
    exit 1
fi

# filter local image name
local_image_name=$(basename "$local_image_path")


# Transfer the files to the remote server using scp
scp "$local_image_path" karolina:/mnt/proj2/dd-24-21/swapfaces/test/faces/"$local_image_name"
