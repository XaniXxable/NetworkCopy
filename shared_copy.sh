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
  if [[ -d $copy_file_path ]]; then
    printf "Copy folder $copy_file_path";
    sudo cp -rv $copy_file_path $net_dir;
  else
    printf "Copy file $copy_file_path";
    sudo cp -v $copy_file_path $net_dir;
  fi
else
  printf "$net_dir is not mounted yet!";
  exit -1;
fi