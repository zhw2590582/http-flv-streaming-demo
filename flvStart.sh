#! /bin/sh

/livego &
ffmpeg -re -stream_loop -1 -i demo.mov  -acodec aac -vcodec libx264 -profile:v baseline -level 3.0 -f flv rtmp://0.0.0.0:1935/demo/demo.flv

exec "$@"