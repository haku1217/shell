#!/bin/sh

if [ $# != 1 ]; then
    echo "引数を1つ入れて下さい"
    exit 1
fi

mkdir -p "$(dirname "$1")" && touch  "$1"