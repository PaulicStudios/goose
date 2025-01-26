#!/bin/bash

while true; do
    sleep 30
    ./fb-rotate -d -1 -r 90
    sleep 30
    ./fb-rotate -d -1 -r 180
    sleep 30
    ./fb-rotate -d -1 -r 270
    sleep 30
    ./fb-rotate -d -1 -r 0
done
