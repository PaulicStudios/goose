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
    sleep 5
    ~/.fb-rotate -d -1 -r 90
    sleep 2
    ~/.fb-rotate -d -1 -r 180
    sleep 2
    ~/.fb-rotate -d -1 -r 270
    sleep 2
    ~/.fb-rotate -d -1 -r 0
    sleep 2
    ~/.fb-rotate -d -1 -r 90
    sleep 2
    ~/.fb-rotate -d -1 -r 180
    sleep 2
    ~/.fb-rotate -d -1 -r 270
    sleep 2
    ~/.fb-rotate -d -1 -r 0
done
