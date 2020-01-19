#!/bin/bash

set -eux

OMERODIR="${PREFIX}/opt/omero/web/OMERO.web"
CONFIGDIR="${PREFIX}/opt/omero/web/config"

mkdir -p "$PREFIX/bin" "${OMERODIR}/etc/grid" "${CONFIGDIR}"

# Empty directories aren't packaged
echo "$PKG_NAME $PKG_VERSION $PKG_BUILDNUM" > "${OMERODIR}/etc/grid/.conda-build"

cp $RECIPE_DIR/whitenoise.omero "${CONFIGDIR}/"

cp $RECIPE_DIR/omero-web* $PREFIX/bin/

chmod +x $PREFIX/bin/omero-web*
