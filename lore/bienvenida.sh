#!/bin/bash

### Colors ###

# Regular
BLACK_R='\e[0;30m' # Black
RED_R='\e[0;31m' # Red
GREEN_R='\e[0;32m' # Green
YELLOW_R='\e[0;33m' # Yellow
BLUE_R='\e[0;34m' # Blue
PURPLE_R='\e[0;35m' # Purple
CYAN_R='\e[0;36m' # Cyan
WHITE_R='\e[0;37m' # White

# Bold
BLACK='\e[1;30m' # Black
RED='\e[1;31m' # Red
GREEN='\e[1;32m' # Green
YELLOW='\e[1;33m' # Yellow
BLUE='\e[1;34m' # Blue
PURPLE='\e[1;35m' # Purple
CYAN='\e[1;36m' # Cyan
WHITE='\e[1;37m' # White

# Underline
BLACK_U='\e[4;30m' # Black
RED_U='\e[4;31m' # Red
GREEN_U='\e[4;32m' # Green
YELLOW_U='\e[4;33m' # Yellow
BLUE_U='\e[4;34m' # Blue
PURPLE_U='\e[4;35m' # Purple
CYAN_U='\e[4;36m' # Cyan
WHITE_U='\e[4;37m' # White

# Background
BLACK_BACK='\e[40m'   # Black
RED_BACK='\e[41m'   # Red
GREEN_BACK='\e[42m'   # Green
YELLOW_BACK='\e[43m'   # Yellow
BLUE_BACK='\e[44m'   # Blue
PURPLE_BACK='\e[45m'   # Purple
CYAN_BACK='\e[46m'   # Cyan
WITHE_BACK='\e[47m'   # White

# Others
NC='\033[0m' # No Color
bold='\033[1m' # Bold

####################################################################################################

### Dirs ###

# Dir
DIR=$(pwd)

# Jumpscares
JUMPSCARES=$DIR/jumpscares
GLITCH=$JUMPSCARES/glitch.ascii
GLITCH_INVERTED=$JUMPSCARES/glitch_inverted.ascii

# Characters
CHARACTERS=$DIR/characters
BENDER=$CHARACTERS/bender.ascii
BENDER_CHIQUITO=$CHARACTERS/bender_chiquito.ascii
DISCORD=$CHARACTERS/discord.ascii

####################################################################################################

### Mensajes Reutilizables ###

# Automata
PROMPT=$(echo -e "${GREEN_R}automata@DACE${NC}:${CYAN_R}~${NC}\$")

# Prompt de espera
MENSAJE_READ=$(echo -e "${bold}[Presiona enter para continuar]${NC}")

####################################################################################################

### MAIN ###

clear
echo -en "${GREEN}Recibiendo mensaje de auxilio" | pv -qL10
echo -en "$GREEN"
echo -en "..." | pv -qL5
echo -e "$NC"
sleep 1
cat $DISCORD | pv -qL2222
echo -en "\n${PROMPT} "
echo -en "¡Hola! Soy un autómata programado por " | pv -qL15
echo -en "${bold}D${NC}...${bold}A${NC}...${bold}C${NC}...\$%^&${bold}E${NC}@#\$." | pv -qL20
echo -en "\n${PROMPT} "
echo -en "Soy el servidor principal de la universidad. En estos momentos estoy bajo ataque proveniente de una fuente desconocida." | pv -qL20
echo -en "\n${PROMPT} "
echo -en "El objetivo parece ser borrar los datos de los estudiantes de la universidad." | pv -qL20
echo -en "\n${PROMPT} "
echo -en "A pesar de que el servidor donde me encuentro corre un buen sistema operativo, Linux." | pv -qL22
echo -en "\n${PROMPT} "
echo -en "Los atacantes son muy hábiles y no permiten que pueda respaldar esta información." | pv -qL20
echo -en "\n${PROMPT} "
echo -en "Mi protocolo de emergencia ya no responde. Tampoco puedo apagar el servidor, si se apaga, la información se perderá para siempre." | pv -qL20
sleep 2
echo -en "\n${PROMPT} "
echo -en "Eres la última esperanza." | pv -qL10
sleep 2
echo -en "\n${PROMPT} "
echo -en "Yo te guiaré hasta" | pv -qL10
echo -en "..." | pv -qL5
sleep 1
for i in {1..5}
do
    cat $GLITCH
    sleep 0.015
    cat $GLITCH_INVERTED
    sleep 0.015
done
clear
echo -e "${GREEN}Recibiendo mensaje de auxilio...${NC}"
cat $DISCORD
echo -e "\n$PROMPT ¡Hola! Soy un autómata programado por ${bold}D${NC}...${bold}A${NC}...${bold}C${NC}...\$%^&${bold}E${NC}@#\$."
echo -e "$PROMPT Soy el servidor principal de la universidad. En estos momentos estoy bajo ataque, de una fuente desconocida."
echo -e "$PROMPT El objetivo parece ser borrar los datos de los estudiantes de la universidad."
echo -e "$PROMPT A pesar de que el servidor donde me encuentro corre un buen sistema operativo, Linux."
echo -e "$PROMPT Los atacantes son muy hábiles y no permiten que pueda respaldar esta información."
echo -e "$PROMPT Mi protocolo de emergencia ya no responde. Tampoco puedo apagar el servidor, si se apaga la información se perderá para siempre."
echo -e "$PROMPT Eres la última esperanza."
echo -en "$PROMPT Yo te guiaré hasta..."
echo -en "$bold"
echo -en "$%^&!@#$...h4st4 d0nd3 m3 s34 p0s1bl3...$%^&!@#$..." | pv -qL15
echo -e "$NC\n"
sleep 1
read -p "$MENSAJE_READ"