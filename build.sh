#!/bin/bash

set -eux

python -m pip install . --no-deps --ignore-installed -vv

OMERODIR="${PREFIX}/opt/omero/web/OMERO.web"

mkdir -p "${OMERODIR}/etc/grid/"

# Empty directories aren't packaged
echo "$PKG_NAME $PKG_VERSION $PKG_BUILDNUM" > "${OMERODIR}/etc/grid/.conda-build"

mkdir -p $PREFIX/bin
cp $RECIPE_DIR/omero-web $PREFIX/bin/
chmod +x $PREFIX/bin/omero-web
