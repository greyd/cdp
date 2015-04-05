#!/usr/bin/env bash
# Install useful utils
sudo apt-get update
sudo apt-get install htop git python-software-properties python g++ make -y

# Install Node.js
NPM_RC=~/.npmrc
BASH_RC=~/.bashrc
NODE_VERSION="v0.12.2"
TMP_DIR="$HOME/tmp"
ARCHIVE_NAME="node-$NODE_VERSION-linux-x64.tar.gz"
DIR_NAME="node-$NODE_VERSION"
DEST_FOLDER="$HOME/env"
function addtopath {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="${PATH:+"$PATH:"}$1"
        echo "export PATH=$PATH" >> "$BASH_RC"
    fi
}
function createIfNotExists {
    if [ ! -d "$1" ]; then
        mkdir -p "$1"
    fi
}
createIfNotExists "$TMP_DIR"
createIfNotExists "$DEST_FOLDER"

wget "http://nodejs.org/dist/$NODE_VERSION/$ARCHIVE_NAME" -P "$TMP_DIR"
cd "$TMP_DIR"

tar -xzf "$ARCHIVE_NAME"
mv "${ARCHIVE_NAME%.*.*}" "$DIR_NAME"
mv "$DIR_NAME" "$DEST_FOLDER"
rm -r "$TMP_DIR"

NODE_MODULES="$DEST_FOLDER/$DIR_NAME/node_modules"
NODE_MODULES_BIN="$NODE_MODULES/bin"
createIfNotExists "$NODE_MODULES_BIN"

echo prefix = "$NODE_MODULES" >> "$NPM_RC"
addtopath "$DEST_FOLDER/$DIR_NAME/bin"
addtopath "$NODE_MODULES_BIN"
source "$BASH_RC"
# Install mongoDb
sudo apt-get install mongodb-server mongodb-clients -y

# Install global node modules
#npm i -g supervisor

# Install local npm modules
cd /vagrant
#npm i