#! /usr/bin/env bash
cd ./repos/testing
    yarn unlink
    yarn link
    cd -

cd ./repos/engine
    yarn unlink
    yarn link
    yarn link @snakesilk/testing
    cd -

cd ./repos/xml-loader
    yarn unlink
    yarn link
    yarn link @snakesilk/testing
    yarn link @snakesilk/engine
    cd -

cd ./repos/megaman-kit
    yarn unlink
    yarn link
    yarn link @snakesilk/engine
    yarn link @snakesilk/xml-loader
    cd -

cd ./repos/megamanjs
    yarn link @snakesilk/engine
    yarn link @snakesilk/xml-loader
    yarn link @snakesilk/megaman-kit
