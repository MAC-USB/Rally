#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color
bold='\033[1m'


clear 
for msg in "Wake up" "The Matrix has you" "Follow the white rabbit" "Knock, knock"
do 
    clear
    pv -qL12<<<$'\e[2J'$'\e[32m'$msg$'\e[37m'
    sleep 2.5
done

cmatrix