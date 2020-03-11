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
DISCORD=$CHARACTERS/discord.ascii
UNKNOW=$CHARACTERS/unknow.ascii
UNKNOW_CHIKO=$CHARACTERS/unknow_chiquito.ascii
MRROBOT=$CHARACTERS/mrrobot.ascii
PILDORA=$CHARACTERS/pildora.ascii

# Jumpscares
JUMPSCARES=$DIR/jumpscares
WINDOWS=$JUMPSCARES/windows.ascii
WINDOWS_INVERTED=$JUMPSCARES/windows_inverted.ascii

# Carpeta de lore
LORE=$DIR/lore

# Archivo paises_ip
PAISES_IP=$LORE/paises_ip.txt

# Llamar a los tecnicos
CALL_TECNICOS=$LORE/tecnicos1.sh

# Lore bueno
LORE_BUENO=$LORE/lore1.sh

# Lore malo
LORE_MALO=$LORE/lore1_fail.sh

# Carpeta de retos/acertijos
RETOS=$DIR/retos

# Pildora Azul
PILDORA_AZUL=$RETOS/reto4_blue.sh

# Pildora Roja
PILDORA_ROJA=$RETOS/reto4_red.sh

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
PROMPT_AUTOMATA=$(echo -e "${GREEN_R}automata@DACE${NC}:${CYAN_R}~${NC}\$")

# JK
PROMPT=$(echo -e "${BLUE_R}jk@MAC${NC}:${CYAN_R}~${NC}\$")

# Unknow
PROMPTUNK=$(echo -e "${PURPLE_R}nhgbzngn@QNPR${NC}:${YELLOW_R}~${NC}\$")

# Rally-PC
PROMPT_PC=$(echo -e "${GREEN}${GROUPNAME}${GREEN_R}@Rally-PC${NC}:${CYAN_R}~${NC}\$")

# Prompt de espera
MENSAJE_READ=$(echo -e "${bold}[Presiona enter para continuar]${NC}")

####################################################################################################

### MAIN ###

function eleccionDePildora {
    while true
    do
        echo -en "${PROMPT_PC} "
        read re
        if [[ $re = "azul" || $re = "Azul" || $re = "AZUL" ]]; then
            
            clear
            
            sleep 0.5
            
            echo -e "${GREEN}[Recuperando conexión con el servidor]${NC}"
            
            sleep 2
            
            cat $DISCORD | pv -qL2222
            
            sleep 2
            
            echo -en "\n$PROMPT_AUTOMATA "
            echo -en "Hola. Se ha cortado el canal de información." | pv -qL20
            
            echo -en "\n$PROMPT_AUTOMATA "
            echo -en "Proseguimos con el objetivo de derrotar al atacante." | pv -qL20
            echo -e "\n"
            
            sleep 1
            
            read -p "$MENSAJE_READ"
            
            source $PILDORA_AZUL $GROUPNAME $ATACANTES $VAL_TECNICOS
            
            break
            
            elif [[ $re = "roja" || $re = "Roja" || $re = "ROJA" ]]; then
            
            source $PILDORA_ROJA $GROUPNAME $ATACANTES $VAL_TECNICOS
            
            break
            
        else
            echo -en "$PROMPT "
            echo -e "Roja o azul muchacho. El tiempo corre." | pv -qL20
            continue
        fi
    done
    
}

clear

cat $UNKNOW | pv -qL2222

echo -en "\n$PROMPTUNK "
echo -en "¿Qué es verde y huele a pintura?" | pv -qL5

echo -en "\n${PROMPT_PC} "
read re

if [[ $re = 'pintura verde' || $re = 'Pintura Verde' || $re = 'PINTURA VERDE' || $re = 'Pintura verde' || $re = 'pintura Verde' ]]; then
    
    echo -en "$PROMPTUNK "
    echo -e "Así que no eres tan estúpido. Podemos seguir entonces." | pv -qL20
    
    sleep 1
    
else
    
    echo -en "$PROMPTUNK "
    echo -en "¿Todo bien en casa?" | pv -qL20
    
    sleep 2
    
    echo -en "\n$PROMPTUNK "
    echo -e "Haré como si no dijiste eso, así que proseguiremos sin demora." | pv -qL15
    
    sleep 1
    
fi

cat $MRROBOT | pv -qL2222

echo -en "\n$PROMPT "
echo -en "$bold"
echo -en "HELLO FRIEND." | pv -qL10
echo -en "$NC"

echo -en "\n$PROMPT "
echo -en "Me presento, me llamo ${bold}J${NC}erónimo ${bold}K${NC}ing." | pv -qL20

echo -en "\n$PROMPT "
echo -en "Provengo de la Matrix y debo probar tu valía." | pv -qL20

echo -en "\n$PROMPT "
echo -en "Necesito que respondas el siguiente acertijo:" | pv -qL20

sleep 1

echo -en "\n$PROMPT "
echo -en "$bold"
echo -en "¿Cuál es el mejor sistema operativo del mundo?" | pv -qL15
echo -e "$NC"

sleep 2

while true
do
    echo -en "${PROMPT_PC} "
    read OPTION
    
    if [ $OPTION = 'linux' -o $OPTION = 'Linux' -o $OPTION = 'LINUX' ]; then
        
        echo -en "$PROMPT "
        echo -en "Existe más de lo que has visto hasta ahora en ésta situación." | pv -qL20
        
        echo -en "\n$PROMPT "
        echo -e "Sientes que hay una verdad más profunda detrás, pero no la puedes ver." | pv -qL20
        
        sleep 2
        
        echo -e "$BLUE$(cat $PILDORA)$NC" | pv -qL2222
        
        sleep 0.5
        
        echo -en "$PROMPT "
        echo -en "Yo te ofrezco una píldora azul." | pv -qL20
        
        sleep 0.5
        
        echo -en "\n$PROMPT "
        echo -en "Si la tomas, no vas saber qué se esconde detrás de este caótico escenario, y vas a seguir intentando solventar tu problema sin mucho retraso." | pv -qL20
        
        echo -en "\n$PROMPT "
        echo -e "No tomas riesgos, y sigues usando tu ingenio para manejar la situación." | pv -qL20
        
        sleep 2
        
        echo -e "$RED$(cat $PILDORA)$NC" | pv -qL2222
        
        sleep 0.5
        
        echo -en "$PROMPT "
        echo -en "También te ofrezco una píldora roja." | pv -qL20
        
        sleep 0.5
        
        echo -en "\n$PROMPT "
        echo -e "Si la tomas, te diré qué es lo que se oculta en ésta situación. Quizás tomar ésta opción consuma más tiempo que el que tienes, pero sabrás cuál es la verdad." | pv -qL20
        
        sleep 2
        
        echo -en "$PROMPT "
        echo -e "¿Cuál es tu elección?" | pv -qL20
        
        sleep 3
        
        eleccionDePildora
        
        break
        
    else
        
        clear
        for i in {1..5}
        do
            cat $WINDOWS
            sleep 0.02
            cat $WINDOWS_INVERTED
            sleep 0.02
        done
        clear
        
        cat $MRROBOT
        echo -e "\n$PROMPT ${bold}HELLO FRIEND.${NC}"
        echo -e "$PROMPT Me presento, me llamo ${bold}J${NC}erónimo ${bold}K${NC}ing."
        echo -e "$PROMPT Provengo de la Matrix y debo probar tu valía."
        echo -e "$PROMPT Necesito que respondas el siguiente acertijo:"
        echo -e "$PROMPT ${bold}¿Cuál es el mejor sistema operativo del mundo?${NC}"
        
        sleep 0.2
        
        echo -en "$PROMPT "
        echo -e "${RED}Mal...${NC}" | pv -qL20
        
        sleep 0.2
        
        continue
        
    fi
done