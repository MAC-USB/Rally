#!/bin/bash

# Colors
RED='\e[1;31m'
GREEN='\e[1;32m'
GREEN_R='\e[0;32m'
CYAN_R='\e[0;36m'
RED_R='\e[0;31m'
PURPLE_R='\e[0;35m'
NC='\033[0m' # No Color
bold='\033[1m'


# Dirs
DIR=$(pwd)

# Jumpscares
JUMPSCARES=$DIR/jumpscares
FUCKYOU=$JUMPSCARES/fuckyou.ascii
FUCKYOU_INVERTED=$JUMPSCARES/fuckyou_inverted.ascii


# Characters
CHARACTERS=$DIR/characters
BENDER=$CHARACTERS/bender.ascii
BENDER_CHIQUITO=$CHARACTERS/bender_chiquito.ascii
DISCORD=$CHARACTERS/discord.ascii


GROUPNAME=$1


# Mensajes Reutilizables
# MENSAJE_READ=$(echo -e "${bold}[Presiona enter para continuar]")
PROMPT=$(echo -e "${GREEN_R}automata@DACE${NC}:${CYAN_R}~${NC}\$")
PROMPT_PC=$(echo -e "${GREEN}${GROUPNAME}${GREEN_R}@Rally-PC${NC}:${CYAN_R}~${NC}\$")

clear

cat $DISCORD | pv -qL2222

echo -en "$PROMPT "
echo -en "${RED_R}¡El archivo de las IP se ha eliminado!${NC}" | pv -qL15

echo -en "\n$PROMPT "
echo -en "${RED}¡Ahora nunca sabremos de donde procede la fuente! ¿Estoy ante unos usuarios inteligentes?${NC}" | pv -qL15

echo -en "\n$PROMPT "
echo -en "Ahora solo nos queda intentar frenar el ataque, pero las esperanzas de lograrlo acaban de bajar significativamente" | pv -qL15
echo -en "..." | pv -qL2

sleep 1

for i in {1..5}
do
    cat $FUCKYOU
    sleep 0.1
    cat $FUCKYOU_INVERTED
    sleep 0.1
done

clear

cat $DISCORD
echo -e "$PROMPT ${RED_R}¡El archivo de las IP se ha eliminado!${NC}"
echo -e "$PROMPT ${RED}¡Ahora nunca sabremos de donde procede la fuente! ¿Estoy ante unos usuarios inteligentes?${NC}"
echo -e "$PROMPT Ahora solo nos queda intentar frenar el ataque, pero las esperanzas de lograrlo acaban de bajar significativamente..."

echo -en "$PROMPT "
echo -e "$%^&!@#$..." | pv -qL10

echo -en "$PROMPT "
echo -en "Lo están haciendo mal " | pv -qL15
echo -en "$RED"
echo -en "$GROUPNAME" | pv -qL15
echo -en "$NC"
echo -e "..." | pv -qL15
