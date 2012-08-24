#!/bin/bash
overlay=$1
mountpoint=$2
host=$3
port=$4
password=$5

ffmpeg -i - -vf "movie=$overlay [overlay]; [in][overlay] overlay" -re -f ogg -vcodec libtheora -r 25 -qscale 6 -acodec libvorbis - | oggfwd $host $port $password $mountpoint
