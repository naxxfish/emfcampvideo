emfcampvideo
============

Various tools for EMF 2012 for the purposes of video streaming

For most of these things, you'll need:

 * ffmpeg (latest git build)
 * oggwd
 * python


oggdump
-------

This is a tiny weensie shell script that just dumps the current output of dvswitch
into an ogg theora file

Just run ./oggdump NameOfFile
and I'll connect to dvswitch and encode whatever is coming out of it currently.

splash_screen
-------------

Simple little script that generates a splash screen with given parameters, and
sends it to the current running version of dvswitch. Run it like this:

./splash_screen "Title Heading" "Subtitle Heading"

And it'll show up in dvswitch as a source.  
