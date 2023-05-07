#!/bin/bash

# Device
export FOX_BRANCH="fox_12.1"
export DT_LINK="https://github.com/RT1648/device_xiaomi_fleur-shrp -b twrp-12.1"

export DEVICE="fleur"
export OEM="xiaomi"

# Build Target
## "recoveryimage" - for A-nly Devices without using Vendor Boot
## "bootimage" - for A/B devices without recovery partition (and without vendor boot)
## "vendorbootimage" - for devices Using vendor boot for the recovery ramdisk (Usually for devices shipped with Android 12 or higher)
export TARGET="mka adbd bootimage"
export OUTPUT="OrangeFox-Unofficial-fleur.zip"

# Extra Command
export EXTRA_CMD="export OF_MAINTAINER=Rohit"
cd device/xiaomi/fleur
wget https://www.google.com/url?sa=t&source=web&rct=j&url=https://github.com/topjohnwu/Magisk/releases/download/v25.2/Magisk-v25.2.apk&ved=2ahUKEwjG3LSuwOP-AhXJSmwGHcYuAjwQFnoECBEQAQ&usg=AOvVaw1iG3y0CVCHb_83_W1JUWuC &&mv *.apk Magisk.zip
export FOX_USE_SPECIFIC_MAGISK_ZIP="device/xiaomi/fleur/Magisk.zip"
export BUNDLED_MAGISK_VER="25.2" 
export BUNDLED_MAGISK_SUM="0bdc32918b6ea502dca769b1c7089200da51ea1def170824c2812925b426d509" 


# Magisk
## Use the Latest Release of Magisk for the OrangeFx addon
export OF_USE_LATEST_MAGISK=false

# Not Recommended to Change
export SYNC_PATH="$HOME/work" # Full (absolute) path.
export USE_CCACHE=1
export CCACHE_SIZE="50G"
export CCACHE_DIR="$HOME/work/.ccache"
export J_VAL=16
