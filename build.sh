#!/bin/bash

MOD_NAME='burner-assembling-machine'
VERSION=0.0.2
CURDIR=`pwd`
TMPDIR=`mktemp -d /tmp/temp.XXXX`
echo "$TMPDIR"
mkdir -p "$TMPDIR"/"$MOD_NAME"_"$VERSION"
cp -r . "$TMPDIR"/"$MOD_NAME"_"$VERSION"
rm -rf "$TMPDIR"/"$MOD_NAME"_"$VERSION"/.git
cd "$TMPDIR"
zip -r "$MOD_NAME"_"$VERSION".zip "$MOD_NAME"_"$VERSION"
cp "$MOD_NAME"_"$VERSION".zip "$CURDIR"
if ! test "$FACTORIO_MOD_PATH" = "";
then
  cp "$MOD_NAME"_"$VERSION".zip "$FACTORIO_MOD_PATH"
fi



