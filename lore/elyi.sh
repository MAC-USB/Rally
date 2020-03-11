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
PHONE=$CHARACTERS/phone.ascii

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

####################################################################################################

### Main ###

clear

echo -en "${PROMPT} "
echo -en "${RED}*Cerrando conexión*${NC}\n" | pv -qL20
echo -en ".....${bold}No responde el servidor${NC}.....\n" | pv -qL12

sleep 2

echo -en "${PROMPT} "
sleep 1

echo -en "${RED}*Recibiendo mensaje automático*${NC}\n" | pv -qL20
echo -en "..... Los archivos de la base de datos de los estudiantes se han borrado.\nUn protocolo de emergencia del servidor ha reaccionado de mala manera y ha eliminado toda su información de los estudiantes y más documentos importantes." | pv -qL12

sleep 2

echo -en "\n${PROMPT} "
sleep 1

echo -en "
.
.
." | pv -qL5

sleep 0.5

echo -en "\n${RED}*Ejecutando script automático*${NC}" | pv -qL12

sleep 1

echo -en "\n${PROMPT} "
echo -en "....${bold}%#$%#$%#$ ${NC} Hola. " | pv -qL10
echo -en "\nAl eliminarse la fibra óptica, cualquier comunicación posible de esta computadora se ve imposible de realizar. Éste script fue programado para activarse en éste escenario." | pv -qL17

sleep 1

echo -en "\nGracias por tu ayuda. \nHabía colocado un exploit en el protocolo de emergencia para que en ésta circunstancia se eliminara la base de datos completa. La USB ahora está acabada, y sin posibilidad de restaurar el internet. \nLo más probable es que la universidad sea invadida para transformarla en la Escuela Venezolana de música llanera y tradicional." | pv -qL17

sleep 1

echo -en " \nSin ti no hubiese podido completar mi objetivo. Muchas gracias...\nAtt: ${YELLOW}eL Yianero.${NC}\n" | pv -qL17
