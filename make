#!/bin/bash

# Establishes base directory of script
BASEDIR=$(dirname $0)

if [ $USER = "root" ]; then
# Directories
    bash $BASEDIR/create-directories.sh && \

# Desktop
    bash $BASEDIR/create-desktop.sh && \

# Control
    bash $BASEDIR/create-control.sh && \

# Postinst
    bash $BASEDIR/create-postinst.sh && \

# Prerm
    bash $BASEDIR/create-prerm.sh && \

# Command
    bash $BASEDIR/create-command.sh && \

# Move and copy files
    bash $BASEDIR/copy-files.sh && \

# Binary build
    bash $BASEDIR/create-binary.sh

# If not run as root
else
    echo "Please run this build script as root or with sudo"
fi
