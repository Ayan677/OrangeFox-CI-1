#!/bin/bash

# Source Vars
source $CONFIG

# A Function to Send Posts to Telegram
telegram_message() {
	curl -s -X POST "https://api.telegram.org/bot${TG_TOKEN}/sendMessage" \
	-d chat_id="${TG_CHAT_ID}" \
	-d parse_mode="HTML" \
	-d text="$1"
}

# Change to the Source Directory
cd $SYNC_PATH

# Color
ORANGE='\033[0;33m'

# Display a message
echo "============================"
echo "Uploading the Build..."
echo "============================"

# Change to the Output Directory
cd out/target/product/${DEVICE}

# Set FILENAME var
FILENAME=$(echo $OUTPUT)

# Upload to oshi.at
if [ -z "$TIMEOUT" ];then
    TIMEOUT=20160
fi
curl --upload-file Orange*.zip https://free.keep.sh
curl --upload-file Orange*.img https://free.keep.sh

wget https://github.com/Sushrut1101/GoFile-Upload/raw/master/upload.sh
chmod +x upload.sh
sudo apt install jq -y
./upload.sh Orange*.zip
./upload.sh Orange*.img
