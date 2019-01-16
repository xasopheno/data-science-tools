#!/usr/bin/env sh


for video in *.mp4 ; do
    FILENAME=$video
    echo $FILENAME;   # Do something else
    mkdir -p output/$FILENAME

    ffmpeg -i $FILENAME -r 30/1 output/$FILENAME/$FILENAME-%04d.png

    sleep 5
done

