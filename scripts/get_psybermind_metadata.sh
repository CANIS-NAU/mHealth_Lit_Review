#!/bin/bash

FILE=$1


while read p; do
    echo $p
    python3 extract_psyberguide_data.py $p
done < $FILE
