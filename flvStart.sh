#! /bin/sh

/livego &
ffmpeg -re -stream_loop -1  -i demo.mov  -acodec aac  -vcodec libx264   -f flv   rtmp://0.0.0.0:1935/demo/demo.flv

exec "$@"