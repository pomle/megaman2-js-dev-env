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

cd ./repos/platform-traits
    yarn link
    yarn link three
    yarn link @snakesilk/engine
    cd -

cd ./repos/platform-kit
    yarn link
    yarn link three
    yarn link @snakesilk/engine
    yarn link @snakesilk/xml-loader
    yarn link @snakesilk/platform-traits
    cd -

cd ./repos/megaman-traits
    yarn link
    yarn link three
    yarn link @snakesilk/engine
    yarn link @snakesilk/platform-traits
    cd -

cd ./repos/megaman-kit
    yarn link
    yarn link three
    yarn link @snakesilk/engine
    yarn link @snakesilk/xml-loader
    yarn link @snakesilk/platform-traits
    yarn link @snakesilk/platform-kit
    yarn link @snakesilk/megaman-traits
    cd -

cd ./repos/megamanjs
    yarn link three
    yarn link @snakesilk/engine
    yarn link @snakesilk/xml-loader
    yarn link @snakesilk/megaman-kit
    yarn link @snakesilk/testing
    cd -

cd ./repos/editor
    yarn link
    yarn link three
    yarn link @snakesilk/engine
    yarn link @snakesilk/xml-loader
    cd -
