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
LORE_BUENO=$LORE/lore1.sh

# Lore malo
LORE_MALO=$LORE/lore1_fail.sh

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

# JK
PROMPT=$(echo -e "${BLUE_R}jk@MAC${NC}:${CYAN_R}~${NC}\$")

# Rally-PC
PROMPT_PC=$(echo -e "${GREEN}${GROUPNAME}${GREEN_R}@Rally-PC${NC}:${CYAN_R}~${NC}\$")

# Prompt de espera
MENSAJE_READ=$(echo -e "${bold}[Presiona enter para continuar]${NC}")

####################################################################################################

### MAIN ###

clear

cat $DISCORD | pv -qL2222

#Colocar prompt de jk

echo -en "\n$PROMPT "
echo -en "La USB ha representado por muchos años la posibilidad de lograr la excelencia educativa en Venezuela. Ingeniería en Computación es una de las carreras más importantes de la universidad, y muchos de sus graduandos terminan siendo figuras importantes en muchas de las empresas del desarrollo informático más grandes del mundo." | pv -qL20

echo -en "\n$PROMPT "
echo -en "El atacante es posiblemente un estudiante de Ingeniería en Computación de la UCV que intenta socavar la universidad porque ha pasado toda su vida siendo comparado con los estudiantes de la USB." | pv -qL20

echo -en "\n$PROMPT "
echo -en "Para vencer a éste atacante, habilidoso por demás, necesitamos demostrar que estamos a su altura, y que podemos leer sus siguientes jugadas. Para ello, es fundamental tomar las mejores decisiones posibles." | pv -qL20

echo -en "\n$PROMPT "
echo -en "Retomarás el contacto con el autómata, pero ahora conoces por qué ésta sucediendo ésta situación y cómo poder solucionarla. En mi posición no puedo resolver el problema yo mismo, pero confío en que tus habilidades deductivas e ingenio podrás solventar el problema. Éxitos." | pv -qL20

echo -en "\n$PROMPT .\n$PROMPT .\n$PROMPT .\n " | pv -qL20
echo -en "*Recuperando conexión con el autómata*" | pv -qL20
echo -en "Es hora de acabar con ésto. He logrado determinar un número de páginas de internet que permitirán acceder al computador del atacante. Puedes seleccionar la página más sospechosa para ésto." | pv -qL20

echo -en "¿A cuál desea acceder?" | pv -qL20
echo -e " ${bold}[Por favor, introduce el número de tu elección.]${NC}"



dialog(){
    clear
    
    cat $DISCORD
    echo -e "\n$PROMPT Es hora de acabar con ésto. He logrado determinar un número de páginas de internet posibles que permitirán acceder al computador del atacante. Puedes seleccionar la página más sospechosa para ésto."
    echo -e "$PROMPT  ¿A cuál desea acceder?${bold}[Por favor, introduce el número de tu elección.]${NC}"
}


# Función de inicio (y reinicio)
# Gracias a ella es posible regresar en el script

begining() {
    sleep 0.25
    echo -e "\t${bold}(1)${NC} www.google.com"
    sleep 0.25
    echo -e "\t${bold}(2)${NC} www.habbo.com"
    sleep 0.25
    echo -e "\t${bold}(3)${NC} www.minecraft.com"
    sleep 0.25
    echo -e "\t${bold}(4)${NC} www.whiterose.com"
    sleep 0.25
    echo -e "\t${bold}(5)${NC} www.aprenderaprogramarcomoenlaUCV.com"
}

finish(){
    sleep 0.25
    echo -e "$PROMPT ¿Dhé unprf? ${bold}[Cbe snibe, vagebqhpr ry aúzreb qr gh ryrppvóa.]${NC}"
    sleep 0.5
    echo -e "\t${bold}(?@!#)${NC} Ohfpne ry nepuvib"
    sleep 0.25
    echo -e "\t${bold}(?@!#)${NC} ¿Nfhzvzbf dhr yn VC cebivrar qr Puvan?"
    sleep 0.25
    echo -e "\t${bold}(?@!#)${NC} ¿Nfhzvzbf dhr abf ngnpn ry SOV?"
    sleep 0.25
    echo -e "\t${bold}(?@!#)${NC} ¿Nfhzvzbf dhr abf ngnpna ybf ehfbf?"
    sleep 0.25
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
            
            source $LORE_BUENO $GROUPNAME $ATACANTE
            
            reto2
            
            break
            
        else
            continue
        fi
    done
    
}

# Evaluación de casos para cada opción particular

reto4_red() {
    
    while true
    do
        
        if [[ $OPTION != 2 && $OPTION != 'a' && $OPTION != 'b' ]]; then
            dialog
            begining
        fi
        
        read -p "$PROMPT_PC " OPTION
        
        if [[ $OPTION = 1 || $OPTION = 2 || $OPTION = 3 ]]; then
            
            echo "Final chimborojo"
            break
            
            elif [ $OPTION = 4 ]; then
            
            echo "Acertijo MrRobot"
            break
            
            elif [ $OPTION = '5' ]; then
            
            sleep 0.25
            echo -en "\n$PROMPT "
            echo -en "*Ingresando en la página*... ¡Ésta es la página! Ahora podemos intentar hacer un ataque... La probabilidad de éxito es mayor si conocemos la ubicación del atacante..." | pv -qL20
            
            if [ $ATACANTES = "FRANCIA" ]; then
                
                echo "Final positivo rojo"
                break
                
                elif [ $ATACANTES = "active" -o $ATACANTES = 'active2' ]; then #esto pasa si seleccionaron a los tecnicos en el acertijo 2 y es un f xD
                echo "Final tecnico de vacaciones"
                break
            else
                echo "Final pais distinto a francia"
                break
            fi
            
            elif [ $OPTION = 0 ]; then
            continue
            
            # Error.
        else
            echo -e "${RED}Opción invalida.${NC}"
            continue
        fi
    done
}

reto4_red