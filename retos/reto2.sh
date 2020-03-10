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
echo -en "Ahora hemos identificado que los atacantes son _______ (dinámico o franceses).Su objetivo posiblemente sea destruir la estabilida de la USB, y esperaron hasta su aniversario 50 para realizar éste ataque." | pv -qL20

echo -en "\n$PROMPT "
echo -en "Necesitamos prevenir que siga el ataque. Necesitamos desconex....$"$"$%#$%#$%....d3sc0n3ct4rl0s...Tenemos varias opciones. ¿Cuál es su idea?" | pv -qL20

echo -en "\n$PROMPT "
echo -e " ${bold}[Por favor, introduce el número de tu elección.]${NC}"



dialog(){
    clear
    
    cat $DISCORD
    echo -e "\n$PROMPT Ahora hemos identificado que los atacantes son _______ (dinámico o franceses).Su objetivo posiblemente sea destruir la estabilida de la USB, y esperaron hasta su aniversario 50 para realizar éste ataque."
    echo -e "$PROMPT Necesitamos prevenir que siga el ataque. Necesitamos desconex....$"$"$%#$%#$%....d3sc0n3ct4rl0s...Tenemos varias opciones. ¿Cuál es su idea?"
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

opcion1() {
    sleep 0.25
    echo -e "\t${bold}(1)${NC} Si"
    sleep 0.25
    echo -e "\t${bold}(2)${NC} No"
    sleep 0.25
}

apagar_si() {
    echo -en "$PROMPT " | pv -qL15
    echo -en "¡NO PODEMOS APAGAR EL SERVIDOR! De hacer eso la base de datos de los estudiantes sería destruida...¿Acaso eres un atacante también? *Activando protocolo de emer....%$#%#$%* *no se puede*...Por ahora, asumiré que no eres un atacante. No pareces muy inteligente./n" | pv -qL15
    echo "Saltando al reto 3"
}

dynamic() {
    echo -en "$PROMPT " | pv -qL15
    echo -en "Está bien. Asumiremos que el atacante es de $ATACANTE/n" | pv -qL15
    
    reto2
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
            
             sleep 0.25
	     echo -e "\t${bold}(a)${NC} Si"
	     sleep 0.25
	     echo -e "\t${bold}(b)${NC} No"
            
            elif [ $OPTION = 2 ]; then
            
            source $CALL_TECNICOS $GROUPNAME
	    echo "Saltamos al reto 3 aqui tambien"
            break
            
            elif [ $OPTION = 3 ]; then
            
            echo -en "$PROMPT " | pv -qL15
	    echo -en "*recibiendo mensaje de alerta*...¿Seguro quieres destruir el servidor? ¿Es que acaso tienes criterio para solventar esta situación?...$#$#$%#$%$#%#$%#$...\n" | pv -qL15
	    echo "FINAL BIF F"
	    break
            
            elif [ $OPTION = 4 ]; then
            
             sleep 0.25
	     echo -e "\t${bold}(4.a)${NC} Apagar la interfaz de red:"
	     sleep 0.25
	     echo -e "\t${bold}(4.b)${NC} Borrar la interfaz de red"
            
            elif [ $OPTION = 'a' ]; then
            
            echo -en "$PROMPT " | pv -qL15
	    echo -en "¡NO PODEMOS APAGAR EL SERVIDOR! De hacer eso la base de datos de los estudiantes sería destruida...¿Acaso eres un atacante también? *Activando protocolo de emer....%$#%#$%* *no se puede*...Por ahora, asumiré que no eres un atacante. No pareces muy inteligente.\n" | pv -qL15
	    echo "Saltando al reto 3\n"
	    break
            
            elif [ $OPTION = 'b' ]; then
            continue

	    elif [ $OPTION = '4.a' ]; then
            
            echo -en "$PROMPT " | pv -qL15
	    echo -en "*Intentando apagar la interfaz...* #$%#$%#$%#$%#$%#$%#$%3...*No se recibe respuesta* Al parecer el atacante impide que pueda desactivar la interfaz de red... Espera, he detectado una forma de hacerlo...*recibiendo mensaje de... la....* \n" | pv -qL15
	    echo "Saltando al reto 3\n"
	    break

	    elif [ $OPTION = '4.b' ]; then
            
            echo -en "$PROMPT " | pv -qL15
	    echo -en "*Intentando borrar la interfaz...* #$%#$%#$%#$%#$%#$%#$%3...*No se recibe respuesta* Al parecer el atacante impide que pueda borrar la interfaz de red... Espera, he detectado una forma de hacerlo...*recibiendo mensaje de... la....* \n" | pv -qL15
	    echo "Saltando al reto 3\n"
	    break
            
            # Error.
        else
            echo -e "${RED}Opción invalida.${NC}"
            continue
        fi
    done
}

reto3(){
    # source $RETO2 $GROUPNAME $ATACANTE
    echo 'FALTA CONEXION'
}

reto2
