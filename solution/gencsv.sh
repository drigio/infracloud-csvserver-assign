#!/bin/bash

FILENAME=inputFile

function getRandom () {
    for i in `seq 1 $1`
    do
        echo "$i, $RANDOM" >> $FILENAME
    done
}

cat /dev/null > $FILENAME

if [[ $# -gt 0 ]]; then
    getRandom $1
else
    getRandom 10
fi

