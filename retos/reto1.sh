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

# Jumpscares
# JUMPSCARES=$DIR/jumpscares
# GLITCH=$JUMPSCARES/glitch.ascii
# GLITCH_INVERTED=$JUMPSCARES/glitch_inverted.ascii

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
LORE_BUENO=$LORE/lore1.sh

# Lore malo
LORE_MALO=$LORE/lore1_fail.sh

####################################################################################################

### Variables de entorno necesarias ###

# Nombre del grupo
GROUPNAME=$1

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
echo -en "Te recuerdo que una dirección IP es un identificador que necesita cualquier computador para acceder a la red." | pv -qL20

echo -en "\n$PROMPT "
echo -en "Usualmente, los países tienen rangos de direcciones IP que pueden utilizar. La dirección del atacante es ${bold}163.172.162.101.${NC}" | pv -qL20

echo -en "\n$PROMPT "
echo -en "Es primordial identificar el país de donde proviene el ataque. El archivo ${bold}\"paises_ip\"${NC} tiene las direcciones IP de cada país." | pv -qL20

echo -en "\n$PROMPT "
echo -en "¿Qué haces?" | pv -qL20
echo -e " ${bold}[Por favor, introduce el número de tu elección.]${NC}"



dialog(){
    clear
    
    cat $DISCORD
    echo -e "\n$PROMPT Te recuerdo que una dirección IP es un identificador que necesita cualquier computador para acceder a la red."
    echo -e "$PROMPT Usualmente, los países tienen rangos de direcciones IP que pueden utilizar. La dirección del atacante es ${bold}163.172.162.101.${NC}"
    echo -e "$PROMPT Es primordial identificar el país de donde proviene el ataque. El archivo ${bold}\"paises_ip\"${NC} tiene las direcciones IP de cada país."
    echo -e "$PROMPT ¿Qué haces? ${bold}[Por favor, introduce el número de tu elección.]${NC}"
}


# Función de inicio (y reinicio)
# Gracias a ella es posible regresar en el script

begining() {
    sleep 0.25
    echo -e "\t${bold}(1)${NC} Buscar el archivo"
    sleep 0.25
    echo -e "\t${bold}(2)${NC} ¿Asumimos que la IP proviene de China?"
    sleep 0.25
    echo -e "\t${bold}(3)${NC} ¿Asumimos que nos ataca el FBI?"
    sleep 0.25
    echo -e "\t${bold}(4)${NC} ¿Asumimos que nos atacan los rusos?"
    sleep 0.25
    echo -e "\t${bold}(5)${NC} Llamar a los técnicos"
    sleep 0.25
}

finish(){
    sleep 0.25
    echo -e "$PROMPT ¿Dhé unprf? ${bold}[Cbe snibe, vagebqhpr ry aúzreb qr gh ryrppvóa.]${NC}"
    sleep 0.5
    echo -e "\t${bold}(?@!#)${NC} Ohfpne ry nepuvib"
    echo -e "\t${bold}(?@!#)${NC} ¿Nfhzvzbf dhr yn VC cebivrar qr Puvan?"
    echo -e "\t${bold}(?@!#)${NC} ¿Nfhzvzbf dhr abf ngnpn ry SOV?"
    echo -e "\t${bold}(?@!#)${NC} ¿Nfhzvzbf dhr abf ngnpna ybf ehfbf?"
    echo -e "\t${bold}(?@!#)${NC} Yynzne n ybf gépavpbf"
    sleep 3
    echo -e "\t${bold}(Francia)${NC} %^!&@#$%^@&#^*."
    sleep 0.25
    
    retocompletado
    
}


retocompletado(){
    while true
    do
        echo -en "${GREEN}${GROUPNAME}${PROMPT} "
        read re
        if [ $re = "francia" -o $re = "Francia" ]
        then
            
            ATACANTE=Francia
            
            reto2
            
            break
            
        else
            continue
        fi
    done
    
}

# Evaluación de casos para cada opción particular



dynamic() {
    echo -en "$PROMPT " | pv -qL15
    echo -en "Está bien. Asumiremos que el atacante es de $ATACANTE/n" | pv -qL15
    
    reto2
}

reto1() {
    
    while true
    do
        
        if [[ $OPTION != 1 ]]; then
            dialog
            begining
        fi
        
        read -p "$PROMPT_PC " OPTION
        
        if [ $OPTION = 1 ]; then
            
            echo -e "\t\t${bold}(a)${NC} Leer el archivo"
            sleep 0.25
            echo -e "\t\t${bold}(b)${NC} Eliminar el archivo"
            sleep 0.25
            echo -e "\t\t${bold}(0)${NC} Volver al menú anterior"
            sleep 0.25
            
            elif [ $OPTION = 2 ]; then
            
            ATACANTE=CHINA
            dynamic
            break
            
            elif [ $OPTION = 3 ]; then
            
            ATACANTE=FBI
            dynamic
            break
            
            elif [ $OPTION = 4 ]; then
            
            ATACANTE=RUSIA
            dynamic
            break
            
            elif [ $OPTION = 5 ]; then
            
            source $CALL_TECNICOS $GROUPNAME
            continue
            
            elif [ $OPTION = 'a' ]; then
            
            cat $PAISES_IP
            sleep 10
            echo -e "\n"
            read -p "$MENSAJE_READ"
            finish
            break
            
            elif [ $OPTION = 'b' ]; then
            
            source $LORE_MALO $GROUPNAME
            ATACANTE=NA
            reto2
            break
            
            elif [ $OPTION = 0 ]; then
            continue
            
            # Error.
        else
            echo -e "${RED}Opción invalida.${NC}"
            continue
        fi
    done
}

reto2(){
    # source $RETO2 $GROUPNAME $ATACANTE
    echo 'FALTA CONEXION'
}

reto1