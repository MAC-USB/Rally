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

# Finales
FINAL_ELYIANERO=$LORE/final_elyianero.sh

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
echo -en "Hemos contactado con la PVBC, Policía Virtual Bolivariana de Caracas, para ayudarnos en nuestra misión." | pv -qL20

echo -en "\n$PROMPT "
echo -en "Sin embargo, su director, solo nos supo decir que cortar el cable de la fibra óptica principal de la universidad, lo cuál dejaría a la USB sin internet por 25 años." | pv -qL20

echo -en "\n$PROMPT "
echo -en "Contrastando ésta información con nuestra base de datos encontramos una línea en el archivo ${bold}\'NO_HACER_NUNCA.txt\'${NC} escrito por el director de la DST-USB, que dice:" | pv -qL20

echo -en "\n$PROMPT "
echo -en "${bold}Nunca debes realizar ésta acción o destruirás la universidad.${NC}" | pv -qL20

echo -en "\n$PROMPT "
echo -en "¿Cómo vas a proceder?" | pv -qL20
echo -e " ${bold}[Por favor, introduce el número de tu elección.]${NC}"



dialog(){
    clear
    
    cat $DISCORD
    echo -e "\n$PROMPT Hemos contactado con la PVBC, Policía Virtual Bolivariana de Caracas para ayudarnos en nuestra misión."
    echo -e "$PROMPT Sin embargo, su director, solo nos supo decir que cortar el cable de la fibra óptica principal de la universidad, lo cuál dejaría a la USB sin internet por 25 años.${NC}"
    echo -e "$PROMPT Contrastando ésta información con nuestra base de datos encontramos una línea en el archivo ${bold}\'NO_HACER_NUNCA.txt\'${NC} escrito por el director de la DST-USB, que dice:"
    echo -e "$PROMPT ${bold}Nunca debes realizar ésta acción o destruirás la universidad.${NC}"
    echo -e "$PROMPT ¿Cómo vas a proceder? ${bold}[Por favor, introduce el número de tu elección.]${NC}"
}


# Función de inicio (y reinicio)
# Gracias a ella es posible regresar en el script

begining() {
    sleep 0.25
    echo -e "\t${bold}(1)${NC} Autorizar que se corte la fibra óptica"
    sleep 0.25
    echo -e "\t${bold}(2)${NC} Ignorar la recomendación de la PVBC"
}

negativoelprocedimiento(){
    
    echo -en "$PROMPT "
    echo -en "$PURPLE_BACK"
    echo -en "%&$%&$%&$..." | pv -qL20
    echo -en "$NC"
    
    sleep 0.5
    
    echo -en "\n$PROMPT "
    echo -en "Hemos podido recuperar algunas funciones del protocolo de emergencia." | pv -qL20
    
    echo -en "\n$PROMPT "
    echo -en "Puedo intentar recuperar un 50% de la base de datos, si se toma esa opción, el resto de los archivos se pierde, y se le enviará una notificación a DACE para recabar nuevamente la información del otro restante de los estudiantes." | pv -qL20
    
    echo -en "\n$PROMPT "
    echo -en "No me queda mucho tiempo." | pv -qL20
    
    sleep 0.5
    
    echo -en "\n$PROMPT "
    echo -e "¿Quiere hacer ésto?" | pv -qL20
    
    sleep 1
    echo -e "\t${bold}(Si)${NC} Si"
    sleep 0.25
    echo -e "\t${bold}(No)${NC} No"
    
    while true
    do
        echo -en "${PROMPT_PC} "
        read re
        if [[ $OPTION = 'si' || $OPTION = 'SI' || $OPTION = 'Si' ]]; then
            
            final_azul2
            break
            
            elif [[ $OPTION = 'no' || $OPTION = 'NO' || $OPTION = 'No' ]]; then
            
            phd
            break
            
        else
            echo -en "\n$PROMPT "
            echo -e "No puedes volver atrás. ${bold}Sí${NC} o ${bold}No.${NC}" | pv -qL20
            continue
        fi
    done
}

final_azul1(){
    
    echo "final positivo_azul1"
    
    
}

final_azul2(){
    
    echo "final positivo_azul2"
}


elyianero() {
    
    sleep 1
    
    source $FINAL_ELYIANERO
    
}

phd() {
    echo "final El PhD"
    
}

flang() {
    
    echo "final Flang"
    
}

mrcrepy() {
    
    echo "final Mr Creepy"
    
    
}

reto4_blue() {
    
    while true
    do
        
        if [[ $OPTION != 2 && $OPTION != 'si' && $OPTION != 'SI' && $OPTION != 'Si' && $OPTION != 'no' && $OPTION != 'NO' && $OPTION != 'No' ]]; then
            dialog
            begining
        fi
        
        read -p "$PROMPT_PC " OPTION
        
        if [ $OPTION = 1 ]; then
            
            elyianero
            break
            
            elif [ $OPTION = 2 ]; then
            
            echo -en "$PROMPT "
            echo -en "Yo tampoco me sentía convencido de ésta dec....${BLACK_R}${WITHE_BACK}%#$%#$%#$...d3c1s10n...$%$^#%^#@...${NC}" | pv -qL20
            
            echo -en "\n$PROMPT "
            echo -en "He descubierto, mientras leías éste mensaje, que existe la posibildiad de ingresar a la computadora del atacante." | pv -qL20
            
            echo -en "\n$PROMPT "
            echo -e "¿Desea hacerlo?" | pv -qL20
            
            sleep 0.25
            echo -e "\t${bold}(Si)${NC} Si"
            sleep 0.25
            echo -e "\t${bold}(No)${NC} No"
            
            elif [[ $OPTION = 'si' || $OPTION = 'SI' || $OPTION = 'Si' ]]; then
            
            sleep 0.25
            echo -e "\t${bold}(a)${NC} Desconectarse de la computadora del atacante"
            sleep 0.25
            echo -e "\t${bold}(b)${NC} Intentar suspender el ataque"
            sleep 0.25
            echo -e "\t${bold}(c)${NC} Apagar la computadora del atacante"
            
            elif [[ $OPTION = 'no' || $OPTION = 'NO' || $OPTION = 'No' ]]; then
            
            negativoelprocedimiento
            
            break
            
            elif [ $OPTION = 'a' ]; then
            
            mrcrepy
            break
            
            elif [ $OPTION = 'b' ]; then
            
            final_azul1
            
            break
            
            elif [ $OPTION = 'c' ]; then
            
            flang
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

reto4_blue