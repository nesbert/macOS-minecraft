#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

MINECRAFT_PATH=~/Library/Application\ Support/minecraft
MINECRAFT_USER=$(whoami)

###############################################################################
# Download arm-lwjgl files
###############################################################################

wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1k_B9GumkWSn2uqgD2LwjHnJM_eRIx0l4' -O arm-lwjgl-version.zip
unzip arm-lwjgl-version.zip

###############################################################################
# Copy files
###############################################################################

# create libraries directory if does not exists
[ -d ${MINECRAFT_PATH}/libraries ] || mkdir ${MINECRAFT_PATH}/libraries

# copy lwjglfat.jar
cp libraries/lwjglfat.jar ${MINECRAFT_PATH}/libraries

# lwjglnatives dir
cp -r lwjglnatives ~/Library/Application\ Support/minecraft

# open files
open ~/Library/Application\ Support/minecraft/lwjglnatives/*.dylib

# close terminal windows
echo "Please close Terminal windows."
osascript -e 'quit app "Terminal"'

# set up versions file
cp -rf versions/1.17.1-arm ~/Library/Application\ Support/minecraft/versions
cp -rf versions/1.18-arm ~/Library/Application\ Support/minecraft/versions

###############################################################################
# TODO Apply Patch
###############################################################################
