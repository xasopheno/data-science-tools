#!/usr/bin/env sh

FILENAME=$1


mkdir -p output/$FILENAME

ffmpeg -i $FILENAME -r 30/1 output/$FILENAME/$FILENAME%04d.png
echo 'Finished generating frames for '$FILENAME