#! /usr/bin/env bash
concurrently \
    'cd ./repos/testing && yarn' \
    'cd ./repos/engine && yarn' \
    'cd ./repos/xml-loader && yarn' \
    'cd ./repos/megaman-kit && yarn' \
    'cd ./repos/megamanjs && yarn'