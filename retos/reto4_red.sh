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
JUMPSCARES=$DIR/jumpscares
GLITCH=$JUMPSCARES/glitch.ascii
GLITCH_INVERTED=$JUMPSCARES/glitch_inverted.ascii

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

# Final tecnicos
FINAL_TECNICOS=$LORE/final_tecnicos.sh

# Carpeta de retos/acertijos
RETOS=$DIR/retos

# Finales
CRIPTO=$RETOS/criptografia.sh

FINAL_FRANCIA=$LORE/final_francia.sh

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
echo -en "Es hora de acabar con esto." | pv -qL20

sleep 0.2

echo -en "\n$PROMPT "
echo -en "He logrado determinar un número de páginas de internet que permitirán acceder al computador del atacante." | pv -qL20

echo -en "\n$PROMPT "
echo -en "Puedes seleccionar la página más sospechosa para esto." | pv -qL20

sleep 0.2

echo -en "\n$PROMPT "
echo -en "¿A cuál desea acceder?" | pv -qL15
echo -e " ${bold}[Por favor, introduce el número de tu elección.]${NC}"


dialog(){
    clear
    
    cat $DISCORD
    echo -e "\n$PROMPT Es hora de acabar con esto."
    echo -e "$PROMPT He logrado determinar un número de páginas de internet posibles que permitirán acceder al computador del atacante."
    echo -e "$PROMPT Puedes seleccionar la página más sospechosa para esto."
    echo -e "$PROMPT ¿A cuál desea acceder? ${bold}[Por favor, introduce el número de tu elección.]${NC}"
}

begining() {
    sleep 0.25
    echo -e "\t${bold}(1)${NC} www.google.com"
    sleep 0.25
    echo -e "\t${bold}(2)${NC} www.habbo.com"
    sleep 0.25
    echo -e "\t${bold}(3)${NC} www.minecraft.com"
    sleep 0.25
    echo -e "\t${bold}(4)${NC} www.reserva.dii.usb.ve"
    sleep 0.25
    echo -e "\t${bold}(5)${NC} www.aprenderaprogramarcomoenlaUCV.com"
    sleep 0.25
    
}

final_tecnicos() {
    
    sleep 1
    
    source $FINAL_TECNICOS
    
}

finish(){
    for i in {1..5}
    do
        cat $GLITCH
        sleep 0.015
        cat $GLITCH_INVERTED
        sleep 0.015
    done
    clear
    cat $DISCORD
    sleep 0.25
    echo -e "\n$PROMPT ¿N pháy qrfrn npprqre? ${bold}[Cbe snibe, vagebqhpr ry aúzreb qr gh ryrppvóa.]${NC}"
    sleep 0.5
    echo -e "\t${bold}(?@!#)${NC}  jjj.erfrein.qvv.hfo.ir"
    sleep 0.25
    echo -e "\t${bold}(^$&#)${NC} www.aprenderaprogramarcomoenlaUCV.com"
    sleep 0.25
    echo -e "\t${bold}(?@!#)${NC} jjj.tbbtyr.pbz"
    sleep 0.25
    echo -e "\t${bold}(^$&#)${NC} www.reserva.dii.usb.ve"
    sleep 0.25
    echo -e "\t${bold}(?@!#)${NC} jjj.unoob.pbz"
    sleep 0.25
    echo -e "\t${YELLOW_BACK}(Hack)${NC} www.wh1t3r0se.com"
    sleep 0.25
    echo -e "\t${bold}(?@!#)${NC} jjj.zvarpensg.pbz"
    sleep 0.25
    echo -e "\t${bold}(^$&#)${NC} www.minecraft.com"
    sleep 0.25
    echo -e "\t${bold}(?@!#)${NC} jjj.juvgrebfr.pbz"
    sleep 0.25
    echo -e "\t${bold}(^$&#)${NC} www.habbo.com"
    sleep 0.25
    echo -e "\t${bold}(?@!#)${NC} jjj.nceraqrencebtenznepbzbraynHPI.pbz"
    sleep 0.25
    echo -e "\t${bold}(^$&#)${NC} www.google.com"
    sleep 1
    while true
    do
        echo -en "${PROMPT_PC} "
        read re
        if [[ $re = "hack" || $re = "Hack" || $re = "HACK" ]]; then
            whiterose
            break
        else
            continue
        fi
    done
}

finalErroneo() {
    echo "FINAL PAGINAS ERRONEAS"
}

whiterose() {
    source $CRIPTO
    sleep 1
}

finalFrancia(){
    source $FINAL_FRANCIA
}

finalTECNICOS(){
    final_tecnicos
}

finalOTROS(){
    echo "final otros paises"
}

ubicacion(){
    if [ $ATACANTES = "FRANCIA" ]; then
        finalFrancia
    elif [[ $VAL_TECNICOS = "active" || $VAL_TECNICOS = 'active2' ]]; then #esto pasa si seleccionaron a los tecnicos en el acertijo 2 y es un f xD
        finalTECNICOS
    else
        finalOTROS
    fi
}

reto4_red() {
    while true
    do
        if [[ $OPTION != 2 && $OPTION != 'a' && $OPTION != 'b' ]]; then
            dialog
            begining
        fi
        read -p "$PROMPT_PC " OPTION
        if [[ $OPTION = 1 || $OPTION = 2 || $OPTION = 3 ]]; then
            finalErroneo
            break
        elif [ $OPTION = 4 ]; then
            finish
            break
        elif [ $OPTION = '5' ]; then
            echo -en "$PROMPT "
            echo -en "*Ingresando en la página*..." | pv -qL20
            echo -en "\n$PROMPT "
            echo -e "¡Esta es la página! Ahora podemos intentar hacer un ataque... La probabilidad de éxito es mayor si conocemos la ubicación del atacante..." | pv -qL20
            sleep 2
            ubicacion
            break
        elif [ $OPTION = 0 ]; then
            continue
        else
            echo -e "${RED}Opción inválida.${NC}"
            continue
        fi
    done
}

reto4_red