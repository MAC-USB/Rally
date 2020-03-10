#!/bin/bash

# Colors
GREEN='\e[1;32m'
GREEN_R='\e[0;32m'
CYAN_R='\e[0;36m'
RED_R='\e[0;31m'
PURPLE_R='\e[0;35m'
NC='\033[0m' # No Color
bold='\033[1m'

# Dirs
DIR=$(pwd)


GROUPNAME=$1
ATACANTES=$2


# Characters
CHARACTERS=$DIR/characters
BENDER=$CHARACTERS/bender.ascii
BENDER_CHIQUITO=$CHARACTERS/bender_chiquito.ascii
DISCORD=$CHARACTERS/discord.ascii


# Mensajes Reutilizables
# MENSAJE_READ=$(echo -e "${bold}[Presiona enter para continuar]")
PROMPT=$(echo -e "${GREEN_R}automata@DACE${NC}:${CYAN_R}~${NC}\$")
# PROMPT_PC=$(echo -e "${GREEN}${GROUPNAME}${GREEN_R}@Rally-PC${NC}:${CYAN_R}~${NC}\$")

clear

cat $DISCORD | pv -qL2222

echo -en "$PROMPT "
echo -en "Ahora hemos identificado que los atacantes son $ATACANTES." | pv -qL15

echo -en "\n$PROMPT "
echo -e "Su objetivo posiblemente sea destruir la estabilida de la USB, y esperaron hasta su aniversario 50 para realizar éste ataque." | pv -qL15

echo -en "$PROMPT "
echo -en "Lo están haciendo bien " | pv -qL15
echo -en "$GREEN"
echo -en "$GROUPNAME" | pv -qL15
echo -en "$NC"
echo -e "..." | pv -qL15
