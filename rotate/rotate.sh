#!/bin/bash

sleep=30

while true; do
    sleep $sleep
    ~/.fb-rotate -d -1 -r 90
    sleep $sleep
    ~/.fb-rotate -d -1 -r 180
    sleep $sleep
    ~/.fb-rotate -d -1 -r 270
    sleep $sleep
    ~/.fb-rotate -d -1 -r 0
done
