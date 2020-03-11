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

# Archivo de paises
PAISES_IP=$DIR/paises_ip

# Characters
CHARACTERS=$DIR/characters
DISCORD=$CHARACTERS/discord.ascii

# Carpeta de lore
LORE=$DIR/lore

# Archivo paises_ip
PAISES_IP=$LORE/paises_ip.txt

# Llamar a los tecnicos
CALL_TECNICOS=$LORE/tecnicos1.sh

# Lore bueno
LORE_BUENO=$LORE/lore2.sh

# Lore malo 1
LORE_MALO_SV_SHUTDOWN=$LORE/lore2_fail_sv_shutdown.sh

# Lore malo 2
LORE_MALO_MARTILLO=$LORE/lore2_fail_martillo.sh

# Tercer reto
RETO3_SH=$RETOS/acertijo_trampa.sh

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

# Rally-PC
PROMPT_PC=$(echo -e "${GREEN}${GROUPNAME}${GREEN_R}@Rally-PC${NC}:${CYAN_R}~${NC}\$")

# Prompt de espera
MENSAJE_READ=$(echo -e "${bold}[Presiona enter para continuar]${NC}")

####################################################################################################

### MAIN ###

clear

cat $DISCORD | pv -qL2222

echo -en "\n$PROMPT "
echo -en "Necesitamos prevenir que siga el ataque. Necesitamos desconex....(@#$%#$%#$%....d3sc0n3ct4rl0s...Tenemos varias opciones." | pv -qL20

echo -en "\n$PROMPT "
echo -en "¿Qué haces?" | pv -qL20
echo -e " ${bold}[Por favor, introduce el número de tu elección.]${NC}"

dialog(){
    clear
    
    cat $DISCORD
    echo -e "\n$PROMPT Necesitamos prevenir que siga el ataque. Necesitamos desconex....(@#$%#$%#$%....d3sc0n3ct4rl0s...Tenemos varias opciones."
    echo -e "$PROMPT ¿Qué haces? ${bold}[Por favor, introduce el número de tu elección.]${NC}"
}


# Función de inicio (y reinicio)
# Gracias a ella es posible regresar en el script

begining() {
    sleep 0.25
    echo -e "\t${bold}(1)${NC} Apagar el servidor"
    sleep 0.25
    echo -e "\t${bold}(2)${NC} Llamar a los técnicos"
    sleep 0.25
    echo -e "\t${bold}(3)${NC} Martillazo"
    sleep 0.25
    echo -e "\t${bold}(4)${NC} Revisar las interfaces de red"
    sleep 0.25
}

# finish(){
#     sleep 0.25
#     echo -e "$PROMPT ¿Dhé unprf? ${bold}[Cbe snibe, vagebqhpr ry aúzreb qr gh ryrppvóa.]${NC}"
#     sleep 0.5
#     echo -e "\t${bold}(?@!#)${NC} Ohfpne ry nepuvib"
#     sleep 0.25
#     echo -e "\t${bold}(?@!#)${NC} ¿Nfhzvzbf dhr yn VC cebivrar qr Puvan?"
#     sleep 0.25
#     echo -e "\t${bold}(?@!#)${NC} ¿Nfhzvzbf dhr abf ngnpn ry SOV?"
#     sleep 0.25
#     echo -e "\t${bold}(?@!#)${NC} ¿Nfhzvzbf dhr abf ngnpna ybf ehfbf?"
#     sleep 0.25
#     echo -e "\t${bold}(?@!#)${NC} Yynzne n ybf gépavpbf"
#     sleep 3
#     echo -e "\t${bold}(Francia)${NC} %^!&@#$%^@&#^*."
#     sleep 0.25

#     retocompletado

# }


retocompletado(){
    
    source $LORE_BUENO $GROUPNAME $ATACANTE
    reto3
    
}

reto2() {
    
    while true
    do
        
        if [[ $OPTION != 1 && $OPTION != 4 ]]; then
            dialog
            begining
        fi
        
        read -p "$PROMPT_PC " OPTION
        
        if [ $OPTION = 1 ]; then
            
            echo -en "$PROMPT "
            echo -e "¿Seguro que quieres apagar el SV?" | pv -qL20
            
            sleep 0.25
            echo -e "\t${bold}(Si)${NC} Si"
            sleep 0.25
            echo -e "\t${bold}(No)${NC} No"
            sleep 0.25
            
            elif [ $OPTION = 2 ]; then
            
            source $CALL_TECNICOS $GROUPNAME
            VAL_TECNICOS=active2
            continue
            
            elif [ $OPTION = 3 ]; then
            
            source $LORE_MALO_MARTILLO $GROUPNAME $ATACANTES
            reto3
            break
            
            elif [ $OPTION = 4 ]; then
            
            sleep 0.25
            echo -e "\t${bold}(a)${NC} Apagar la interfaz de red"
            sleep 0.25
            echo -e "\t${bold}(b)${NC} Borrar la interfaz de red"
            
            elif [[ $OPTION = 'si' || $OPTION = 'SI' || $OPTION = 'Si' ]]; then
            
            source $LORE_MALO_SV_SHUTDOWN $GROUPNAME $ATACANTES
            reto3
            break
            
            elif [[ $OPTION = 'no' || $OPTION = 'NO' || $OPTION = 'No' ]]; then
            
            continue
            
            elif [ $OPTION = 'a' ]; then
            
            echo -en "$PROMPT " | pv -qL15
            echo -en "*Intentando apagar la interfaz...* #$%#$%#$%#$%#$%#$%#$%3...*No se recibe respuesta* Al parecer el atacante impide que pueda desactivar la interfaz de red... Espera, he detectado una forma de hacerlo...*recibiendo mensaje de... la....* \n" | pv -qL20
            retocompletado
            break
            
            elif [ $OPTION = 'b' ]; then
            
            echo -en "$PROMPT " | pv -qL15
            echo -en "*Intentando borrar la interfaz...* #$%#$%#$%#$%#$%#$%#$%3...*No se recibe respuesta* Al parecer el atacante impide que pueda borrar la interfaz de red... Espera, he detectado una forma de hacerlo...*recibiendo mensaje de... la....* \n" | pv -qL20
            retocompletado
            break
            
            # Error.
        else
            echo -e "${RED}Opción invalida.${NC}"
            continue
        fi
    done
}

reto3(){
    
    # El reto 3 es el acertijo trampa
    source $RETO3_SH $GROUPNAME $ATACANTES
}

reto2
