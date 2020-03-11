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
KEVIN=$CHARACTERS/kevin.ascii

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

# Prompt de Kevin

FLANG=$(echo -e "${PURPLE}cr@MAC${NC}:${CYAN_R}~${NC}$")

####################################################################################################

### Main ###

clear

echo -en "${PROMPT} "

echo -en "${YELLOW}[Apagando la computadora del atacante...]${NC} " | pv -qL12

sleep 1.5

echo -en "\n${PROMPT} "

echo -en "${RED}[ERROR" | pv -qL12

echo -en "${RED}...]${NC}" | pv -qL5

sleep 1.5

echo -en "\n${PROMPT} "

echo -en "${YELLOW}[Reintentando...]${NC}" | pv -qL12

sleep 1.5

echo -en "\n${PROMPT} "

echo -en "${RED}[ERROR" | pv -qL12

echo -en "${RED}...]${NC}" | pv -qL5

sleep 1.5

echo -en "\n${PROMPT} "

echo -en "${RED_R}...%#$%#$%#$...${NC}" | pv -qL15

echo -en "\n${PROMPT} "

echo -en "No hemos logrado apagar la computadora del atacante..." | pv -qL12

sleep 2

clear

cat $KEVIN | pv -qL2222

echo -en "\n${FLANG} "

echo -en "${YELLOW}..." | pv -qL5

echo -en "${YELLOW}[Mensaje programado]${NC}" | pv -qL15

sleep 1

echo -en "\n${FLANG} "

echo -en "${YELLOW}[Finalizando simulación 1369]${NC}" | pv -qL15

sleep 1

echo -en "\n${FLANG} "

echo -en "... ${bold}Hola.${NC}" | pv -qL12

sleep 1

echo -en "\n${FLANG} "

echo -en "Si este mensaje aparece en su pantalla, significa que no ha podido solventar la situación. " | pv -qL12

echo -en "\n${FLANG} "

echo -en "Este ataque fue una simulación de seguridad para probar su capacidad en una situación de emergencia. Hemos detectado que, aunque ha acertado en algunas decisiones, no ha cumplido con los requerimientos mínimos del desafío..." | pv -qL12

sleep 1.5

echo -en "\n${FLANG} "

echo -en "Tal parece que usted no posee las aptitudes que buscamos. Sin lugar a dudas, sus habilidades como administrador de sistemas" | pv -qL12

echo -en "${bold} no valen la pena.${NC}" | pv -qL5

sleep 1.5

echo -en "\n${FLANG} "

echo -en "${CYAN_R}-Mensaje del jefe del Laboratorio F de Aulas computarizadas,${NC}" | pv -qL12

echo -en "${BLUE} FLANG${CYAN_R}-${NC}" | pv -qL5

echo -en "\n${FLANG} "

echo -en "${RED}[Fin de la conección con el servidor]${NC}\n" | pv -qL15

read -p "$MENSAJE_READ"
