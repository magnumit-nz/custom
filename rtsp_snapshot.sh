##This script connects to a RTSP stream using ffmpeg over TCP, streams for 1.5 seconds and captures an image. Debian 9 was used as the source system.
##The source camera was a unifi G3 connected to a UNVR running unifi protect. RTSP is enabled in the controller.

#!/bin/bash

##Get current date
NOW=$(printf "%(%F_%H%M%S)T")
##Print current date
echo $NOW

##Grab image from RTSP stream and name the image with the current date
ffmpeg -rtsp_transport tcp -y -i rtsp://YOUR_RTSP_STREAM_ADDRESS -ss 00:00:01.50 -vframes 1 /OUTPURDIRECTORY/$NOW.jpg
