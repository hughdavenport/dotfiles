#!/bin/bash
f=$1
year=$(basename $f | cut -d "-" -f 1)
month=$(basename $f | cut -d "-" -f 2)
day=$(basename $f | cut -d "-" -f 3)
dstdir=~/scrots/$year/$month/$day
mkdir -p $dstdir
mv $f $dstdir
mv ~/scrots/last.png.1 ~/scrots/last.png.2
mv ~/scrots/last.png.0 ~/scrots/last.png.1
mv ~/scrots/last.png ~/scrots/last.png.0
ln -sf $dstdir/$(basename $f) ~/scrots/last.png
notify-send "made screenshot in $dstdir/$(basename $f)"
