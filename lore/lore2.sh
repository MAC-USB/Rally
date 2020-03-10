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
MRROBOT=$CHARACTERS/mrrobot.ascii
BENDER_CHIQUITO=$CHARACTERS/bender_chiquito.ascii
DISCORD=$CHARACTERS/discord.ascii

# Jumpscares
JUMPSCARES=$DIR/jumpscares
JEFF=$JUMPSCARES/jeffthekiller.ascii
JEFF_INVERTED=$JUMPSCARES/jeffthekiller_inverted.ascii



# Mensajes Reutilizables
# MENSAJE_READ=$(echo -e "${bold}[Presiona enter para continuar]")
PROMPT=$(echo -e "${GREEN_R}automata@DACE${NC}:${CYAN_R}~${NC}\$")
# PROMPT_PC=$(echo -e "${GREEN}${GROUPNAME}${GREEN_R}@Rally-PC${NC}:${CYAN_R}~${NC}\$")

clear

echo -en "${GREEN}Recibiendo un mensaje de la Matrix${NC}" | pv -qL8
echo -en "$GREEN"
echo -en "..." | pv -qL4
echo -e "$NC"

sleep 1

cat $MRROBOT | pv -qL2222

echo -en "${PROMPT} "
echo -en "Se me está enviando una información por un canal de información secundario." | pv -qL15

echo -en "\n${PROMPT} "
echo -en "Al parecer, el atacante no tiene acceso a éste canal de información, por lo que el mensaje parece seguro..." | pv -qL15

sleep 1

echo -en "\n${PROMPT} "
echo -en "Pasaré a" | pv -qL8
echo -en "..." | pv -qL2

for i in {1..5}
do
    cat $JEFF
    sleep 0.015
    cat $JEFF_INVERTED
    sleep 0.015
done

clear

echo -e "${GREEN}Recibiendo un mensaje de la Matrix${NC}"
cat $MRROBOT
echo -e "${PROMPT} Se me está enviando una información por un canal de información secundario."
echo -e "${PROMPT} Al parecer, el atacante no tiene acceso a éste canal de información, por lo que el mensaje parece seguro..."
echo -en "${PROMPT} Pasaré a..."

echo -en "$bold"
echo -en "%#$%#$%#$....*P4s4r3 a m0str4rlo p0r p4ntall4*" | pv -qL15
echo -e "$NC"