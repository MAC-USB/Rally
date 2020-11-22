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

# Characters
CHARACTERS=$DIR/characters
KMALEON=$CHARACTERS/kmaleon.ascii

####################################################################################################

### Variables de entorno necesarias ###

### Variables de entorno necesarias ###

# Nombre del grupo
GROUPNAME=$1

# Nombre de los atacantes
ATACANTES=$2

# Valor de los tecnicos
VAL_TECNICOS=$3

####################################################################################################

### Mensajes Reutilizables ###

# Automata
PROMPT_AUTOMATA=$(echo -e "${GREEN_R}automata@DACE${NC}:${CYAN_R}~${NC}\$")

# Kmaleon
PROMPT=$(echo -e "${CYAN_R}jt@MAC${NC}:${CYAN_R}~${NC}\$")

# Prompt de espera
MENSAJE_READ=$(echo -e "${bold}[Presiona enter para continuar]${NC}")

####################################################################################################

### Main ###

clear
echo -e "${RED}[Cerrando conexión]${NC}"
sleep 3
cat $KMALEON | pv -qL2222
echo -e "\n${RED}[Recibiendo mensaje de fuente desconocida...]${NC}\n"
sleep 1
echo -en "\n${PROMPT} "
sleep 1
echo -e "..." | pv -qL5
sleep 1
echo -en "${PROMPT} "
echo -en "${bold}Hola. ${NC}" | pv -qL10
echo -en "\n${PROMPT} "
echo -en "Soy el atacante. Acabas de ayudarme a lograr mi objetivo." | pv -qL20
echo -en "\n${PROMPT} "
echo -en "Realmente no tenía las herramientas para destruir por completo el servidor." | pv -qL20
sleep 2
echo -en "\n${PROMPT} "
echo -en "Si no hubieses actuado, no habría podido terminar mi misión." | pv -qL20
echo -en "\n${PROMPT} "
echo -en "Gracias a ti he logrado mis objetivos de destruir a la USB." | pv -qL20
echo -en "\n${PROMPT} "
echo -en "Y podré seguir durmiendo en paz." | pv -qL20
echo -en "\n${PROMPT} "
echo -en "Se despide ..." | pv -qL10
sleep 2
echo -en "\n${PROMPT} "
echo -e "Att: ${CYAN}el Kmaleon.${NC}\n" | pv -qL5
sleep 2
read -p "$MENSAJE_READ"