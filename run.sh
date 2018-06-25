#!/bin/bash
TEMP_DIR="/home/gsc/starbound"
WORK_DIR="/home/gsc/server_files"
if [ -d "$TEMP_DIR" ]; then
    echo "Beginning initial bootstrap, please wait..."
    cp -r $TEMP_DIR/* $WORK_DIR
    rm -rf $TEMP_DIR
    echo "Bootstrap finished, launching server..."
fi

printenv
cd $WORK_DIR/linux/
$WORK_DIR/linux/starbound_server
