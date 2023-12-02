#!/bin/bash

mount_point="/media/alex/B362-D50C"

if [ ! -d "$mount_point" ]
then
    echo "SD mount point doesn't exist"
    exit 1
fi

rm -f "$mount_point/*"
pio run
[ $? -ne 0 ] && exit 2
cp -v .pio/build/mks_robin_nano_v1v2/Robin_nano35.bin  $mount_point/Robin_nano.bin
#
# umount $mount_point
# echo "unmounted sd card"
