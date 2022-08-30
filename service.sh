#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}
# This script will be executed in late_start service mode
# https://github.com/termux/termux-app/issues/77
sleep 20
su $(stat -c %u /data/data/com.termux) -l -c "/system/bin/termux-shell.sh"
