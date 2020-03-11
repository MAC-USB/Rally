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

# Logos
RALLY_LOGO=$DIR/logos/rallylogo.ascii
# TEAM_LOGO=$DIR/logo/teamlogo.ascii

# Carpeta de lore
LORE=$DIR/lore

# Instrucciones
INSTRUCCIONES_SH=$LORE/instrucciones.sh

# Bienvenida
BIENVENIDA_SH=$LORE/bienvenida.sh

# Carpeta de retos/acertijos
RETOS=$DIR/retos

# Primer reto
RETO1_SH=$RETOS/reto1.sh

####################################################################################################

### Mensajes Reutilizables###

# Rally-PC
PROMPT=$(echo -e "${GREEN_R}@Rally-PC${NC}:${CYAN_R}~${NC}\$")

# Prompt de espera
MENSAJE_READ=$(echo -e "${bold}[Presiona enter para continuar]${NC}")

####################################################################################################

### MAIN ###

clear

### Funcion que trapea las señales para evitar que el usuario salga del script ###

function trapear {
    trap intentarSalir SIGHUP
    trap intentarSalir SIGINT
    trap intentarSalir SIGQUIT
    trap intentarSalir SIGILL
    trap intentarSalir SIGTRAP
    trap intentarSalir SIGABRT
    trap intentarSalir SIGBUS
    trap intentarSalir SIGFPE
    trap intentarSalir SIGUSR1
    trap intentarSalir SIGSEGV
    trap intentarSalir SIGUSR2
    trap intentarSalir SIGPIPE
    trap intentarSalir SIGALRM
    trap intentarSalir SIGTERM
    trap intentarSalir SIGSTOP
    trap intentarSalir SIGTSTP
    echo ""
}

### Mensaje que sale al intentar salir del script ###

function intentarSalir {
    echo 'No puedes salir una vez iniciado el reto... No seas cobarde.'
}

### Funcion principal ###

function start {
    
    clear
    
    echo -en "${RED}unknow${PROMPT} ${NC}${BLUE}Iniciando...${NC}"
    
    sleep 1
    
    echo -e "\n${RED}unknow${PROMPT} ${NC}Por favor ingresa el nombre de tu equipo. Intenta que sea original y único."
    
    sleep 1
    
    echo -e "${BLUE}[Ingresa el nombre de tu equipo]${NC}"
    echo -en "${BLUE}=>${NC} "
    
    read GROUPNAME
    
    echo -e "\n${GREEN}${GROUPNAME}${PROMPT}\n"
    
    sleep 1
    
    read -p "$MENSAJE_READ"
    
    clear
    
    # Logo Rally.
    echo -e "$YELLOW$(cat $RALLY_LOGO)$NC" | pv -qL2222
    
    # Logo CEIC / MAC.
    # echo -e "$bold$(cat $TEAM_LOGO)$NC" | pv -qL2222
    
    sleep 3
    
    # goto instrucciones.
    instrucciones
}

function instrucciones {
    
    source $INSTRUCCIONES_SH
    
    while true
    do
        echo -en "${GREEN}${GROUPNAME}${PROMPT} "
        read re
        if [ $re = "Iniciar" -o $re = "iniciar" ]
        then
            echo -en "\n$RED"
            echo -en "Que comience el juego..." | pv -qL20
            echo -e "$NC\n"
            read -p "$MENSAJE_READ"
            bienvenida
            break
        elif [ $re = "Salir" -o $re = "salir" ]
        then
            echo -e "${GREEN}${bold}Ha salido del script.${NC}"
            break
        else
            echo -e "${RED}${bold}Opción inválida.\n${NC}"
            continue
        fi
    done
}

function bienvenida {
    
    # trapear
    
    source $BIENVENIDA_SH
    
    clear
    
    bandersnatch
    
}

function bandersnatch {
    
    source $RETO1_SH $GROUPNAME
    
    echo 'FINAL'
}


### Inicio del script ###
start
