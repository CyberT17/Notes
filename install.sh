#!/bin/sh
set -euf

if [ -z ${1+x} ]; then
  cmd='default'
else
  cmd="$1"
fi

binDir=$HOME/.local/bin
configDir=$HOME/.config/notes

mkdir -p "$binDir"
cp notes "$binDir"
chmod +x "$binDir"/notes

mkdir -p "$configDir" 
if ! [ -f "$configDir"/config ]; then
    cp config "$configDir"
fi



echo
echo 'Done!' 

