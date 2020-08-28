#!/usr/bin/bash

set -o errexit
set -o nounset
set -o pipefail

SCRIPTS_DIRECTORY="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null && pwd)"
THIRD_PARTY=${SCRIPTS_DIRECTORY}/../thirdparty
ARCHIVE=${THIRD_PARTY}/archives
SRC=${THIRD_PARTY}/src

# Download and extract archive containing source code.
mkdir -p {${ARCHIVE},${SRC}}
wget -nc -nv -O ${ARCHIVE}/nlohmann-3.6.1.tar.gz https://github.com/nlohmann/json/archive/v3.6.1.tar.gz || true
tar xf ${ARCHIVE}/nlohmann-3.6.1.tar.gz -C ${SRC}

# Build library.
# `CMAKE_INSTALL_PREFIX` determines where the library will be installed when using `make install`.
cmake -H${SRC}/json-3.6.1 -B${SRC}/json-3.6.1/build \
          -DCMAKE_BUILD_TYPE=Release \
                -DBUILD_SHARED_LIBS=ON \
                      -DCMAKE_INSTALL_PREFIX=${THIRD_PARTY} \
                            -DJSON_BuildTests=OFF

# Install library in location configured using `CMAKE_INSTALL_PREFIX`.
make -j 8 -C ${SRC}/json-3.6.1/build install

