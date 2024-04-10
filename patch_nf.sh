#!/bin/sh
git clone git@github.com:ryanoasis/nerd-fonts.git --depth 1
cd nerd-fonts
./font-patcher ../dist/ttf/PixelCode.ttf
mv PixelCodeNerdFont-Regular.ttf .. -f
