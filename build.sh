#!/bin/bash
set -e
cd ${0%/*}
ZIP_NAME="$(basename $(pwd)).zip"
rm -f $ZIP_NAME || true
zip -r $ZIP_NAME *
adb push $ZIP_NAME  /data/local/tmp/$ZIP_NAME
adb shell su -c magisk --install-module /data/local/tmp/$ZIP_NAME
adb shell rm -f /data/local/tmp/$ZIP_NAME
adb shell su -c "reboot&"
