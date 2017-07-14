#! /usr/bin/env bash
cd ./node_modules/three
    yarn unlink
    cd -

cd ./repos/testing
    yarn unlink
    yarn unlink three
    cd -

cd ./repos/engine
    yarn unlink
    yarn unlink three
    yarn unlink @snakesilk/testing
    cd -

cd ./repos/xml-loader
    yarn unlink
    yarn unlink three
    yarn unlink @snakesilk/testing
    yarn unlink @snakesilk/engine
    cd -

cd ./repos/megaman-kit
    yarn unlink
    yarn unlink @snakesilk/engine
    yarn unlink @snakesilk/xml-loader
    cd -

cd ./repos/megamanjs
    yarn unlink three
    yarn unlink @snakesilk/engine
    yarn unlink @snakesilk/xml-loader
    yarn unlink @snakesilk/megaman-kit
    yarn unlink @snakesilk/testing
    cd -