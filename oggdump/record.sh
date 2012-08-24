
ffmpeg -i - -f ogg -vcodec libtheora -qscale 7 -acodec libvorbis $1.ogv
