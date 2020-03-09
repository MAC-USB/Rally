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
JUMPSCARES=$DIR/jumpscares


# Mensajes Reutilizables
PROMPT=$(echo -e "${GREEN_R}automata@DACE${NC}:${CYAN_R}~${NC}\$")


# Jumpscares
GLITCH=$JUMPSCARES/glitch.ascii
GLITCH_INVERTED=$JUMPSCARES/glitch_inverted.ascii


### MAIN ###

clear

echo -en "${GREEN}Recibiendo mensaje de auxilio" | pv -qL8
echo -en "$GREEN"
echo -en "..." | pv -qL4
echo -en "$NC"

sleep 1

echo -en "\n${PROMPT} "
echo -en "¡Hola! Soy un autómata programado por " | pv -qL8
echo -en "${bold}D${NC}...${bold}A${NC}...${bold}C${NC}...\$%^&${bold}E${NC}@#\$." | pv -qL12


echo -en "\n${PROMPT} "
echo -en "Soy el servidor principal de la universidad. En estos momentos estoy bajo ataque, de una fuente desconocida." | pv -qL12

echo -en "\n${PROMPT} "
echo -en "El objetivo parece ser borrar los datos de los estudiantes de la universidad." | pv -qL12

echo -en "\n${PROMPT} "
echo -en "Los atacantes son muy hábiles y no permiten que pueda respaldar esta información." | pv -qL12

echo -en "\n${PROMPT} "
echo -en "Mi protocolo de emergencia ya no responde. Tampoco puedo apagar el servidor, si se apaga la información se perderá para siempre." | pv -qL12

sleep 2

echo -en "\n${PROMPT} "
echo -en "Eres la última esperanza." | pv -qL6

sleep 2

echo -en "\n${PROMPT} "
echo -en "Yo te guiare hasta" | pv -qL6
echo -en "..." | pv -qL2

sleep 1


for i in {1..5}
do
    cat $GLITCH
    sleep 0.02
    cat $GLITCH_INVERTED
    sleep 0.02
done

clear

echo -e "${GREEN}Recibiendo mensaje de auxilio...${NC}"
echo -e "${PROMPT} ¡Hola! Soy un autómata programado por ${bold}D${NC}...${bold}A${NC}...${bold}C${NC}...\$%^&${bold}E${NC}@#\$."
echo -e "${PROMPT} Soy el servidor principal de la universidad. En estos momentos estoy bajo ataque, de una fuente desconocida."
echo -e "${PROMPT} El objetivo parece ser borrar los datos de los estudiantes de la universidad."
echo -e "${PROMPT} Los atacantes son muy hábiles y no permiten que pueda respaldar esta información."
echo -e "${PROMPT} Mi protocolo de emergencia ya no responde. Tampoco puedo apagar el servidor, si se apaga la información se perderá para siempre."
echo -e "${PROMPT} Eres la última esperanza."

echo -en "${PROMPT} Yo te guiare hasta..."
echo -en "$bold"
echo -en "$%^&!@#$...h4st4 d0nd3 m3 s34 p0s1bl3...$%^&!@#$..." | pv -qL12
echo -e "$NC"