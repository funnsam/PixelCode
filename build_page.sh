cd src
./build_without_venv.sh
cd ..
rm page/ttf -rf
rm page/otf -rf
rm page/woff2 -rf
rm page/variable -rf
cp dist/* page/ -r
