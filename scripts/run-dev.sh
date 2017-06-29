#! /usr/bin/env bash
concurrently -n engine,xml,kit,megaman -p name\
    'cd ./repos/engine && yarn run watch' \
    'cd ./repos/xml-loader && sleep 8 && yarn run watch' \
    'cd ./repos/megaman-kit && sleep 8 && yarn run watch' \
    'cd ./repos/megamanjs && sleep 15 && yarn run watch+start'
