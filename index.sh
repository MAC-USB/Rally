#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\e[1;33m'
NC='\033[0m' # No Color
bold='\033[1m'

DIR=$(pwd)

# Logo
RALLY_LOGO=$DIR/logos/rallylogo.ascii
# TEAM_LOGO=$DIR/logo/teamlogo.ascii


# Lore


# Retos / Acertijos


# Intrucciones
INTRUCCIONES_SH=$DIR/lore/intrucciones.sh

# Mensajes Reutilizables
MENSAJE_READ=$(echo -e "${bold}[Presiona enter para continuar]")

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
    echo -e "Iniciando..." | pv -qL10
    introduccion_logos
}


function introduccion_logos {
    
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
    
    read -p "$MENSAJE_READ"
    
    bienvenida
    
    
}

function bienvenida {
    
    # source
    
    trapear
    echo 'tes'
    
    
}


# Inicio del script
start