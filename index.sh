#!/bin/bash

RED='\033[1;31m'
GREEN='\033[1;32m'
BLUE='\033[1;34m'
YELLOW='\e[1;33m'
GREEN_R='\e[0;32m'
RED_R='\e[0;31m'
CYAN_R='\e[0;36m'
NC='\033[0m' # No Color
bold='\033[1m'


DIR=$(pwd)


# Logo
RALLY_LOGO=$DIR/logos/rallylogo.ascii
# TEAM_LOGO=$DIR/logo/teamlogo.ascii


### Lore ###
LORE=$DIR/lore
# Intrucciones
INTRUCCIONES_SH=$LORE/intrucciones.sh
# Bienvenida
BIENVENIDA_SH=$LORE/bienvenida.sh


### Retos / Acertijos ###
RETOS=$DIR/retos
# Primer reto
RETO1_SH=$RETOS/reto1.sh






# Mensajes Reutilizables
MENSAJE_READ=$(echo -e "${bold}[Presiona enter para continuar]")
PROMPT=$(echo -e "${GREEN_R}@Rally-PC${NC}:${CYAN_R}~${NC}\$")

clear

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

function intentarSalir {
    echo 'No puedes salir una vez iniciado el reto... No seas cobarde.'
}


function start {
    
    clear
    
    echo -en "${RED}unknow${PROMPT} ${NC}${BLUE}Iniciando...${NC}"
    
    sleep 1
    
    echo -e "\n${RED}unknow${PROMPT} ${NC}Por favor ingresa el nombre de tu equipo. Intenta que sea original y único."
    
    sleep 1
    
    echo -en "${BLUE}[Ingresa el nombre de tu equipo] ${NC}"
    
    read GROUPNAME
    
    echo -e "${GREEN}${GROUPNAME}${PROMPT}"
    
    sleep 1
    
    read -p "$MENSAJE_READ"
    
    
    clear
    
    # Logo Rally.
    echo -e "$YELLOW$(cat $RALLY_LOGO)$NC" | pv -qL2222
    
    # Logo CEIC / MAC.
    # echo -e "$bold$(cat $TEAM_LOGO)$NC" | pv -qL2222
    
    sleep 5
    
    # goto intrucciones.
    intrucciones
}

function intrucciones {
    
    source $INTRUCCIONES_SH
    
    
    while true
    do
        
        echo -en "${GREEN}${GROUPNAME}${PROMPT} "
        read re
        if [ $re = "Iniciar" -o $re = "iniciar" ]
        then
            echo -e "$RED"
            echo -e "Que comience el juego..." | pv -qL20
            echo -e "$NC"
            read -p "$MENSAJE_READ"
            break
        elif [ $re = "q" ]
        then
            echo -e "${GREEN}${bold}Ha salido del script.${NC}"
            break
        else
            echo -e "${RED}${bold}Opcion invalida.\n${NC}"
            continue
        fi
    done
    
    bienvenida
}

function bienvenida {
    
    # trapear
    
    source $BIENVENIDA_SH
    read -p "$MENSAJE_READ"
    
    clear
    
    primerReto
    
}

function primerReto {
    
    source $RETO1_SH $GROUPNAME
    
}


# Inicio del script
start