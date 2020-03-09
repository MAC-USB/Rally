#!/bin/bash

# Colors
GREEN='\e[1;32m'
GREEN_R='\e[0;32m'
CYAN_R='\e[0;36m'
RED_R='\e[0;31m'
PURPLE_R='\e[0;35m'
NC='\033[0m' # No Color
bold='\033[1m'


GROUPNAME=$1


# Mensajes Reutilizables
# MENSAJE_READ=$(echo -e "${bold}[Presiona enter para continuar]")
PROMPT=$(echo -e "${GREEN_R}automata@DACE${NC}:${CYAN_R}~${NC}\$")
PROMPT_PC=$(echo -e "${GREEN}${GROUPNAME}${GREEN_R}@Rally-PC${NC}:${CYAN_R}~${NC}\$")

clear

echo -e "${PROMPT}"



# Ahora hemos identificado que los atacantes son _______ (dinámico o franceses).Su objetivo posiblemente sea destruir la estabilida de la USB, y esperaron hasta su aniversario 50 para realizar éste ataque.