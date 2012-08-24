##!/bin/bash
name=$1
author=$2
echo $name | fold -w 24 -s > framename.txt
echo $author | fold -w 28 -s > frameauthor.txt
nameheight=`<framename.txt wc -l`
echo name height is $nameheight
ffmpeg -loop 1 -re -i blank.png \
	-vf "drawtext=x=200:y=230:textfile=framename.txt:fontsize=48:fontcolor=0xffffff:fontfile=UNIVERSS.TTF,drawtext=x=230:y=230+($nameheight*50):textfile=frameauthor.txt:fontsize=32:fontcolor=0xffffff:fontfile=UNIVERSS.TTF" \
	-f dv -r 25 -vcodec dvvideo - -target pal-dv  \
	| dvsource-file /dev/stdin -h localhost -p 5050
