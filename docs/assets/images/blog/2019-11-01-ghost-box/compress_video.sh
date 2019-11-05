#!/bin/sh

ffmpeg -i $1 -c:v libx264 -b:v 1.5M -bufsize 4M $2
