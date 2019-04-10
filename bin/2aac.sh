#!/bin/bash
set -e

for FILE in *.webm
do
    ffmpeg -i "$FILE" -b:a 160k -vn -c:a aac "${FILE%.*}.m4a"
done
