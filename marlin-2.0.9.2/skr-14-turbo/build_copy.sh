#!/bin/bash

mount_point="/media/alex/098B-1D5B"

if [ ! -d "$mount_point" ]
then
    echo "SD mount point doesn't exist"
    exit 1
fi
rm "$mount_point/*"
pio run
[ $? -ne 0 ] && exit 2
cp -v .pio/build/LPC1769/firmware.bin $mount_point

umount $mount_point
echo "unmounted sd card"
