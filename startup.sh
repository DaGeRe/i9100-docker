#!/bin/bash

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

cd /home/android/

echo "Docker container initialized. Download sources by running download.sh, build LineageOS for i9100 by running buildAndroid.sh"

bash
