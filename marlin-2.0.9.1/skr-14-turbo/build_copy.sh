#!/bin/bash

if [ ! -d "/media/alex/disk" ]
then
    echo "SD mount point doesn't exist"
    exit 1
fi
rm /media/alex/disk/*
pio run
[ $? -ne 0 ] && exit 2
cp -v .pio/build/LPC1769/firmware.bin /media/alex/disk/

umount /media/alex/disk
echo "unmounted sd card"
