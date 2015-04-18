#!/bin/bash

version="0.4.0-1"
file="chefdk-${version}.dmg"
if [[ ! -f $file ]]
then
  wget "https://opscode-omnibus-packages.s3.amazonaws.com/mac_os_x/10.8/x86_64/${file}"
fi
open $file
