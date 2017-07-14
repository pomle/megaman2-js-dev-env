#! /usr/bin/env bash
concurrently -n engine,xml,kit,megaman -p name\
    'cd ./repos/engine && yarn run watch' \
    'sleep 8 && cd ./repos/xml-loader && yarn run watch' \
    'sleep 10 && cd ./repos/editor && yarn run start'
