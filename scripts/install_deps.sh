#!/bin/bash

set -eu
set -o pipefail

function install() {
  mason install $1 $2
  mason link $1 $2
}

# setup mason
./scripts/setup.sh --config local.env
source local.env

install boost 1.67.0
install freetype 2.7.1
install protozero 1.6.8
install sdf-glyph-foundry 0.2.0
install gzip-hpp 0.1.0
# pipx install conan
#pipx ensurepath

#pipx run conan profile detect || true
#pipx run conan install conanfile.txt --build=missing