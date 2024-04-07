#!/bin/sh -e

cd "$(readlink -f $(dirname "$0"))"

# Pixel Code build script

# Activate python virtual environment.
../activate.sh
source ../.venv/bin/activate

./build_without_venv.sh
