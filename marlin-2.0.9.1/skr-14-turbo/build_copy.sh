#!/bin/bash

rm /media/alex/disk/*
pio run
cp .pio/build/LPC1769/firmware.bin /media/alex/disk/
umount /media/alex/disk
