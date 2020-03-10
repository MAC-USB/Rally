#!/bin/bash

# Colors
txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
bakgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
txtrst='\e[0m'    # Text Reset

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
GLITCH=$JUMPSCARES/glitch.ascii
GLITCH_INVERTED=$JUMPSCARES/glitch_inverted.ascii


# Mensajes Reutilizables
PROMPT=$(echo -e "${GREEN_R}automata@DACE${NC}:${CYAN_R}~${NC}\$")


# Characters
CHARACTERS=$DIR/characters
BENDER=$CHARACTERS/bender.ascii
BENDER_CHIQUITO=$CHARACTERS/bender_chiquito.ascii
DISCORD=$CHARACTERS/discord.ascii


### MAIN ###

clear

echo -en "${GREEN}Recibiendo mensaje de auxilio" | pv -qL8
echo -en "$GREEN"
echo -en "..." | pv -qL4
echo -e "$NC"

sleep 1

cat $DISCORD | pv -qL2222

echo -en "\n${PROMPT} "
echo -en "¡Hola! Soy un autómata programado por " | pv -qL10
echo -en "${bold}D${NC}...${bold}A${NC}...${bold}C${NC}...\$%^&${bold}E${NC}@#\$." | pv -qL15


echo -en "\n${PROMPT} "
echo -en "Soy el servidor principal de la universidad. En estos momentos estoy bajo ataque proveniente de una fuente desconocida." | pv -qL15

echo -en "\n${PROMPT} "
echo -en "El objetivo parece ser borrar los datos de los estudiantes de la universidad." | pv -qL15

echo -en "\n${PROMPT} "
echo -en "Los atacantes son muy hábiles y no permiten que pueda respaldar esta información." | pv -qL15

echo -en "\n${PROMPT} "
echo -en "Mi protocolo de emergencia ya no responde. Tampoco puedo apagar el servidor, si se apaga, la información se perderá para siempre." | pv -qL15

sleep 2

echo -en "\n${PROMPT} "
echo -en "Eres la última esperanza." | pv -qL8

sleep 2

echo -en "\n${PROMPT} "
echo -en "Yo te guiare hasta" | pv -qL8
echo -en "..." | pv -qL2

sleep 1


for i in {1..5}
do
    cat $GLITCH
    sleep 0.025
    cat $GLITCH_INVERTED
    sleep 0.025
done

clear

echo -e "${GREEN}Recibiendo mensaje de auxilio...${NC}"
cat $DISCORD
echo -e "$PROMPT ¡Hola! Soy un autómata programado por ${bold}D${NC}...${bold}A${NC}...${bold}C${NC}...\$%^&${bold}E${NC}@#\$."
echo -e "$PROMPT Soy el servidor principal de la universidad. En estos momentos estoy bajo ataque, de una fuente desconocida."
echo -e "$PROMPT El objetivo parece ser borrar los datos de los estudiantes de la universidad."
echo -e "$PROMPT Los atacantes son muy hábiles y no permiten que pueda respaldar esta información."
echo -e "$PROMPT Mi protocolo de emergencia ya no responde. Tampoco puedo apagar el servidor, si se apaga la información se perderá para siempre."
echo -e "$PROMPT Eres la última esperanza."

echo -en "$PROMPT Yo te guiare hasta..."
echo -en "$bold"
echo -en "$%^&!@#$...h4st4 d0nd3 m3 s34 p0s1bl3...$%^&!@#$..." | pv -qL12
echo -e "$NC"
