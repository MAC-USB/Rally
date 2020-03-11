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
PHONE=$CHARACTERS/phone.ascii
CARMEN=$CHARACTERS/cookingmama.ascii

####################################################################################################

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
PROMPT=$(echo -e "${GREEN_R}automata@DACE${NC}:${CYAN_R}~${NC}\$")

# Prompt de espera
MENSAJE_READ=$(echo -e "${bold}[Presiona enter para continuar]${NC}")

# Prompt de Carmen
CREEPY=$(echo -e "${BLUE_R}mc@MAC${NC}:${CYAN_R}~${NC}$")

####################################################################################################

### Main ###

clear

cat $DISCORD | pv -qL2222

sleep 0.5

echo -en "\n${PROMPT} "
echo -en "${BLUE_R}[RECIBIENDO SEÑAL DE COMUNICACIÓN" | pv -qL20
echo -en "...]${NC}" | pv -qL5

echo -en "\n${PROMPT} "
echo -en "${BLUE_R}[PROCESANDO MENSAJE" | pv -qL20
echo -en "...]${NC}" | pv -qL5


### Entra Carmen

clear

cat $CARMEN | pv -qL2222

echo -en "\n${CREEPY} "
echo -en "${bold}... Hola." | pv -qL15

sleep 1

echo -en "\n${CREEPY} "
echo -en "Finalmente, he conseguido acceso completo al servidor." | pv -qL20

echo -en "\n${CREEPY} "
echo -en "Después de todo, he logrado mi objetivo: ${bold}borrar la información universitaria${NC}" | pv -qL20

sleep 1

echo -en " excepto la perteneciente a estudiantes del orfeón de la universidad. " | pv -qL20

echo -en "\n${CREEPY} "
echo -en "Soy un ex estudiante de Ingeniería en Computación de la USB que buscaba venganza por recibir bullying por ser parte del orfeón universitario." | pv -qL20

echo -en "\n${CREEPY} "
echo -en "Ahora mi victoria está asegurada." | pv -qL20

echo -en "\n${CREEPY} "
echo -en "Gracias a tu decisión pude darme cuenta de la conexión que intentaste establecer, y al desconectarla, logré infiltrarme en tu computadora y acceder \nen el servidor." | pv -qL20

echo -en "\n${CREEPY} "
echo -en "Este era el mejor curso de acción que podía suceder para mi causa." | pv -qL20

sleep 0.75

echo -en "\n${CREEPY} "
echo -en "${bold}Hasta luego.${NC}" | pv -qL15

echo -en "\n${CREEPY} "
echo -en "${PURPLE}-Atte: " | pv -qL15
echo -en "Mister Creepy-${NC}" | pv -qL5

echo -en "\n${CREEPY} "
echo -en "${RED} ...%#$%#$%#$%#$%#$%#$%#$%..." | pv -qL15
echo -en "\n[Apagando el servidor]${NC}" | pv -qL15

echo -en "\n"
echo -en "\n"

sleep 1

read -p "${MENSAJE_READ}"

#Fin del juego: *Se recibe una comunicación* *Recibiendo mensaje...* H0l4. Mi nombre es Mister Creepy. Acabo de lograr acceso completo al servidor. He borrado la información universitada excepto la de los estudiantes del orfeón universitario. Soy un ex estudiante de Ingeniería en Computación de la USB que buscaba venganza por recibir bullying por ser parte del orfeón universitario. Ahora mi victoria está asegurada. Gracias a tu decisión pude darme cuenta de la conexión que intentaste establecer, y al desconectarla, logré infiltrarme en tu computadora y acceder en el servidor. Este era el mejor curso de acción que podía suceder para mi causa. Hasta luego ...%#$%#$%#$%#$%#$%#$%#$%....*Apagando el servidor* ---Créditos---


