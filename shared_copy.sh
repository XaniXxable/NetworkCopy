#!/bin/bash

net_dir=$NET_DIR;
filename=`basename "$0"`;
copy_file_path=$1;


# Check the parametr count.
if [ $# != 1 ]; then
  printf "Usage: ./$filename <path to file>";
  exit -2;
fi

# Check if the network drive has been already mounted.
if mountpoint -q -- "$net_dir"; then
  printf "Copy $copy_file_path to $net_dir";
  sudo rsync -avz --progress $copy_file_path $net_dir;
else
  printf "$net_dir is not mounted yet!";
  exit -1;
fi