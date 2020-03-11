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
FUCKYOU=$JUMPSCARES/fuckyou.ascii
FUCKYOU_INVERTED=$JUMPSCARES/fuckyou_inverted.ascii

# Characters
CHARACTERS=$DIR/characters
DISCORD=$CHARACTERS/discord.ascii

####################################################################################################

### Variables de entorno necesarias ###

# Nombre del grupo
GROUPNAME=$1

####################################################################################################

### Mensajes Reutilizables ###

# Automata
PROMPT=$(echo -e "${GREEN_R}automata@DACE${NC}:${CYAN_R}~${NC}\$")

# Prompt de espera
MENSAJE_READ=$(echo -e "${bold}[Presiona enter para continuar]${NC}")

# Final
FINAL_KMALEON=$DIR/lore/final_kmaleon.sh

####################################################################################################

# Funcion del final kmaleon

kmaleon() {

    sleep 1

    source $FINAL_KMALEON
}

### Main ###

# echo -en  ...$#$#$%#$%$#%#$%#$...\n" | pv -qL15
#

clear

cat $DISCORD | pv -qL2222

echo -en "\n${RED}[Recibiendo mensaje de alerta]${NC}"

sleep 1

echo -en "\n$PROMPT "
echo -en "${bold}¿Seguro quieres destruir el servidor?${NC}" | pv -qL20

echo -en "\n$PROMPT "
echo -en "¿Es que acaso tienes criterio para solventar esta situación?" | pv -qL20

echo -en "\n$PROMPT "
echo -e "...\$#\$#\$%#\$%!\$#%#\#$%#\$..." | pv -qL20

sleep 1

echo -en "$PROMPT "
echo -en "Lo están haciendo mal " | pv -qL20
echo -en "$RED"
echo -en "$GROUPNAME" | pv -qL20
echo -en "$NC"
echo -en "..." | pv -qL10
echo -e "\n"

sleep 1

read -p "$MENSAJE_READ"

kmaleon
