#! /usr/bin/env bash
# Ensures all repos are running the same instance of dependencies.
# Critical for type comparison, instance checking, and mocking.
cd ./node_modules/three
    yarn link
    cd -

cd ./repos/testing
    yarn link
    yarn link three
    cd -

cd ./repos/engine
    yarn link
    yarn link three
    yarn link @snakesilk/testing
    cd -

cd ./repos/xml-loader
    yarn link
    yarn link three
    yarn link @snakesilk/testing
    yarn link @snakesilk/engine
    cd -

cd ./repos/megaman-kit
    yarn link
    yarn link @snakesilk/engine
    yarn link @snakesilk/xml-loader
    cd -

cd ./repos/megamanjs
    yarn link three
    yarn link @snakesilk/engine
    yarn link @snakesilk/xml-loader
    yarn link @snakesilk/megaman-kit
    yarn link @snakesilk/testing
