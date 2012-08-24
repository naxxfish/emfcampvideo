#!/bin/bash
mkfifo test_pipe
gst-launch -e ffmux_dv name=mux ! filesink location=test_pipe  \
	videotestsrc !  "video/x-raw-rgb,width=720,height=576,framerate=(fraction)25/1" \
	! ffmpegcolorspace \
	! ffenc_dvvideo \
	! mux.  \
	audiotestsrc \
	! 'audio/x-raw-int,channels=2,rate=48000,width=16,depth=16' \
	! mux. | dvsource-file test_pipe

