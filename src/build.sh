#!/bin/sh
python3 build_from_images.py
# fontmake ../build/PixelCode.designspace -o variable --output-dir ../dist/variable
# woff2_compress ../dist/variable/*.ttf
echo make font
fontmake -u ../build/*.ufo -o otf --output-dir ../dist/otf
fontmake -u ../build/*.ufo -o ttf --output-dir ../dist/ttf
echo convert to woff2
ls ../dist/ttf/*.ttf | xargs -I {} woff2_compress {}
mv ../dist/ttf/*.woff2 ../dist/woff2
