#!/bin/bash

# Device
export FOX_BRANCH="fox_12.1"
export DT_LINK="https://github.com/Ayan677/device_xiaomi_fleur-twrp -b twrp-12.1"

export DEVICE="fleur"
export OEM="xiaomi"

# Build Target
## "recoveryimage" - for A-nly Devices without using Vendor Boot
## "bootimage" - for A/B devices without recovery partition (and without vendor boot)
## "vendorbootimage" - for devices Using vendor boot for the recovery ramdisk (Usually for devices shipped with Android 12 or higher)
export TARGET="bootimage"

export OUTPUT="OrangeFox-Unofficial-fleur.zip"

# Extra Command
export EXTRA_CMD="export OF_MAINTAINER=Rohit"

# Use the Latest Release of Magisk for the OrangeFx addon
export OF_USE_LATEST_MAGISK=true

# Not Recommended to Change
export SYNC_PATH="$HOME/work" # Full (absolute) path.
export USE_CCACHE=1
export CCACHE_SIZE="50G"
export CCACHE_DIR="$HOME/work/.ccache"
export J_VAL=16
