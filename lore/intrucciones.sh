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

### Main ###

echo -e "\n${bold}Instrucciones del juego:${NC}\n"
echo -e "${BLACK}${GREEN_BACK} * ${NC}${bold} Para jugar debe seleccionar las opciones que aparecen en pantalla.\n"
echo -e "${BLACK}${GREEN_BACK} * ${NC}${bold} Dependiendo de las opciones elegidas, el final podría variar.\n"
echo -e "${BLACK}${GREEN_BACK} * ${NC}${bold} Ten cuidado al elegir tus opciones, si cometes un error eso se verá afectado en tu puntuación final.\n"
echo -e "${BLACK}${GREEN_BACK} * ${NC}${bold} Para sumar puntos, debe seleccionar las mejores opciones en cada escenario.\n"
echo -e "${BLACK}${GREEN_BACK} * ${NC}${bold} El puntaje final aparecerá al finalizar el juego, al final de los créditos.\n"
echo -e "${BLACK}${GREEN_BACK} * ${NC}${bold} La duración total del reto es de 10 minutos, si tardas más de eso perderás automáticamente.\n"
sleep 5
echo -e "${BLACK}${GREEN_BACK} * ${NC}${bold} Para comenzar con el reto, escriba ${GREEN}'Iniciar'.${NC}\n"