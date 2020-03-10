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
echo -en "Hemos contactado con la PVBC, Policía Virtual Bolivariana de Caracas para ayudarnos en nuestra misión." | pv -qL20

echo -en "\n$PROMPT "
echo -en "Sin embargo, su director, solo nos supo decir que cortar el cable de la fibra óptica principal de la universidad, lo cuál dejaría a la USB sin internet por 25 años." | pv -qL20

echo -en "\n$PROMPT "
echo -en "Contrastando ésta información con nuestra base de datos encontramos una línea en el archivo NO_HACER_NUNCA.txt escrito por el director de la DST-USB, que dice: ${bold}Nunca debes realizar ésta acción o destruirás la universidad${NC}." | pv -qL20

echo -en "\n$PROMPT "
echo -en "¿Cómo vas a proceder?" | pv -qL20
echo -e " ${bold}[Por favor, introduce el número de tu elección.]${NC}"



dialog(){
    clear
    
    cat $DISCORD
    echo -e "\n$PROMPT THemos contactado con la PVBC, Policía Virtual Bolivariana de Caracas para ayudarnos en nuestra misión."
    echo -e "$PROMPT Sin embargo, su director, solo nos supo decir que cortar el cable de la fibra óptica principal de la universidad, lo cuál dejaría a la USB sin internet por 25 años.${NC}"
    echo -e "$PROMPT Contrastando ésta información con nuestra base de datos encontramos una línea en el archivo NO_HACER_NUNCA.txt escrito por el director de la DST-USB, que dice: ${bold}Nunca debes realizar ésta acción o destruirás la universidad${NC}."
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



dynamic() {
    echo -en "$PROMPT " | pv -qL15
    echo -en "Está bien. Asumiremos que el atacante es de $ATACANTE\n" | pv -qL15
    
    reto2
}

reto4_blue() {
    
    while true
    do
        
        if [[ $OPTION != 2 && $OPTION != 'a' && $OPTION != 'b' ]]; then
            dialog
            begining
        fi
        
        read -p "$PROMPT_PC " OPTION
        
        if [ $OPTION = 1 ]; then
            
            echo "Final ElYianero"
	    break
            
            elif [ $OPTION = 2 ]; then

	    echo -en "\n$PROMPT "
	    echo -en "Yo tampoco me sentía convencido de ésta dec....$#%#$%#$%#...d3c1s10n...$"#$"#$#%$%#$... " | pv -qL20
	    echo -en "He descubierto mientras leías éste mensaje que existe la posibildiad de ingresar a la computadora del atacante." | pv -qL20

	    echo -en "\n$PROMPT "
	    echo -en "¿Desea hacerlo?" | pv -qL20
	    echo -e " ${bold}[Por favor, introduce el número de tu elección.]${NC}"

            sleep 0.25
    	    echo -e "\t${bold}(a)${NC} Si"
    	    sleep 0.25
    	    echo -e "\t${bold}(b)${NC} No"

            
            elif [ $OPTION = 'a' ]; then
            
            sleep 0.25
    	    echo -e "\t${bold}(1.a)${NC} Desconectarse de la computadora del atacante"
    	    sleep 0.25
    	    echo -e "\t${bold}(1.b)${NC} Intentar suspender el ataque"
            sleep 0.25
    	    echo -e "\t${bold}(1.c)${NC} Apagar la computadora del atacante"


            elif [ $OPTION = 'b' ]; then
 
	    echo -en "\n$PROMPT "
	    echo -en "%&$%&$%&$... Hemos podido recuperar algunas funciones del protocolo de emergencia. Puedo intentar recuperar un 50% de la base de datos, si se toma esa opción, el resto de los archivos se pierde, y se le enviará una notificación a DACE para recabar nuevamente la información del otro restante de los estudiantes." | pv -qL20
	    echo -en "\nNo me queda mucho tiempo." | pv -qL20

	    echo -en "\n$PROMPT "
	    echo -en "¿Quiere hacer ésto?" | pv -qL20
	    echo -e " ${bold}[Por favor, introduce el número de tu elección.]${NC}"
            
            sleep 0.25
    	    echo -e "\t${bold}(2.a)${NC} Si"
    	    sleep 0.25
    	    echo -e "\t${bold}(2.b)${NC} No"
            
            elif [ $OPTION = '1.a' ]; then
            
            echo "final Mr Creepy"
            break
            
            elif [ $OPTION = '1.b' ]; then
            
            echo "final positivo_azul1"
            break
            
	    elif [ $OPTION = '1.c' ]; then
            
            echo "final Flang"
            break

	    elif [ $OPTION = '2.a' ]; then
            
            echo "final positivo_azul2"
            break

	    elif [ $OPTION = '2.b' ]; then
            
            echo "final El PhD"
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

retox(){
    # source $RETO2 $GROUPNAME $ATACANTE
    echo 'FALTA CONEXION'
}

reto4_blue
