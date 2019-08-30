#!/bin/bash

./setup.sh
mkdir -p ${PREFIX}/${PKG_NAME}-${PKG_VERSION}
cp -r ${SRC_DIR}/* ${PREFIX}/${PKG_NAME}-${PKG_VERSION}/

cd "${PREFIX}/${PKG_NAME}-${PKG_VERSION}"
WEST_PYTHON=$(which python2.7)
WEST_PYTHON=$WEST_PYTHON $WEST_PYTHON .westpa_gen.py
chmod +x westpa.sh
