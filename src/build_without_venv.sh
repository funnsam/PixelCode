# Build UFOs from images and fea files.
python3 build_from_images.py || exit 1

# Variable font (experimental)
fontmake ../build/PixelCode.designspace -o variable --output-dir ../dist/variable
woff2_compress ../dist/variable/*.ttf

# Call fontmake to build the UFOs in to OTF and TTF fonts.
fontmake -u ../build/*.ufo -o otf --output-dir ../dist/otf || exit 1
fontmake -u ../build/*.ufo -o ttf --output-dir ../dist/ttf || exit 1

# Create woff2 fonts from the TTFs.
ls ../dist/ttf/*.ttf | xargs -I {} woff2_compress {} || exit 1
mkdir ../dist/woff2
mv ../dist/ttf/*.woff2 ../dist/woff2
