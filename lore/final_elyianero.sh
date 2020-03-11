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
SACO=$CHARACTERS/sacodepapas2.ascii

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

# LG
PROMPT=$(echo -e "${CYAN_R}lg@MAC${NC}:${CYAN_R}~${NC}\$")

# Prompt de espera
MENSAJE_READ=$(echo -e "${bold}[Presiona enter para continuar]${NC}")

####################################################################################################

### Main ###

clear

echo -e "${RED}[Cerrando conexión]${NC}"

sleep 3

cat $SACO | pv -qL2222

echo -en "${PROMPT_AUTOMATA} "
echo -en ".....${bold}No responde el servidor${NC}....." | pv -qL15

sleep 2

echo -e "\n${PROMPT} "

sleep 1

echo -e "\n${RED}[Recibiendo mensaje automático]${NC}\n"

sleep 1

echo -en "${PROMPT_AUTOMATA} "
echo -en "....." | pv -qL5

echo -en "\n${PROMPT_AUTOMATA} "
echo -en "Los archivos de la base de datos de los estudiantes se han borrado." | pv -qL20

echo -en "\n${PROMPT_AUTOMATA} "
echo -en "Un protocolo de emergencia del servidor ha reaccionado de mala manera y ha eliminado toda su información de los estudiantes y más documentos importantes." | pv -qL20

sleep 3

echo -en "\n${PROMPT} "

sleep 1

echo -e "..." | pv -qL5

sleep 1

echo -e "\n${RED}[Ejecutando script automático]${NC}\n"

sleep 1

echo -en "${PROMPT} "
echo -en "${bold}%%!@#%&&#${NC} Hola. " | pv -qL10

echo -en "\n${PROMPT} "
echo -en "Al eliminarse la fibra óptica, cualquier comunicación posible de esta computadora se ve imposible de realizar." | pv -qL20

echo -en "\n${PROMPT} "
echo -en "Este script fue programado para activarse en este escenario." | pv -qL20

sleep 2

echo -en "\n${PROMPT} "
echo -en "Gracias por tu ayuda." | pv -qL20

echo -en "\n${PROMPT} "
echo -en "Había colocado un ${bold}honeypot${NC} en el protocolo de emergencia para que en esta circunstancia se eliminara la base de datos completa." | pv -qL20

echo -en "\n${PROMPT} "
echo -en "La USB ahora está acabada, y sin posibilidad de restaurar el internet." | pv -qL20

echo -en "\n${PROMPT} "
echo -en "Lo más probable es que la universidad sea invadida para transformarla en la Escuela Venezolana de Música Llanera y Tradicional." | pv -qL20

sleep 2

echo -en "\n${PROMPT} "
echo -en "Sin ti no hubiese podido completar mi objetivo. Muchas gracias..." | pv -qL15

sleep 5

echo -en "\n${PROMPT} "
echo -e "Att: ${YELLOW}eL Yianero.${NC}\n" | pv -qL5

sleep 2

read -p "$MENSAJE_READ"
