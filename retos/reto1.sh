#!/bin/bash

# Colors
GREEN='\e[1;32m'
GREEN_R='\e[0;32m'
CYAN_R='\e[0;36m'
RED_R='\e[0;31m'
PURPLE_R='\e[0;35m'
NC='\033[0m' # No Color
bold='\033[1m'

# Dirs
DIR=$(pwd)

PAISES_IP=$DIR/paises_ip

GROUPNAME=$1
ATACANTE=$2


# Characters
#CHARACTERS=$DIR/characters
#BENDER=$CHARACTERS/bender.ascii
#BENDER_CHIQUITO=$CHARACTERS/bender_chiquito.ascii
#DISCORD=$CHARACTERS/discord.ascii


# Mensajes Reutilizables
# MENSAJE_READ=$(echo -e "${bold}[Presiona enter para continuar]")
PROMPT=$(echo -e "${GREEN_R}automata@DACE${NC}:${CYAN_R}~${NC}\$")
# PROMPT_PC=$(echo -e "${GREEN}${GROUPNAME}${GREEN_R}@Rally-PC${NC}:${CYAN_R}~${NC}\$")

clear

#cat $DISCORD | pv -qL2222

echo -en "$PROMPT "
echo -en "Te recuerdo que una dirección IP es un identificador que necesita cualquier computador para acceder a la red." | pv -qL15

echo -en "\n$PROMPT "
echo -en "Usualmente, los países tienen rangos de direcciones IP que pueden utilizar. La dirección del atacante es 163.172.162.101." | pv -qL15

echo -en "\n$PROMPT "
echo -en " Es primordial identificar el país de donde proviene el ataque. El archivo \"paises_ip\" tiene las direcciones IP de cada país. ¿Qué haces?\n\n" | pv -qL15

# Textos de opciones y respuestas
# O para opciones
# R para respuestas de las opciones elegidas

O:1() {
echo "(1) Buscar el archivo"
}
O:1:1() {
echo "(1.1) Leer el archivo"
}
O:1:2() {
echo "(1.2) Eliminar el archivo"
}
R:1:2() {
    echo -en "$PROMPT "
    echo -en "¡El archivo de las IP se ha eliminado! ¡Ahora nunca sabremos de donde proviene el ataque!" | pv -qL15
    echo -en "\n$PROMPT "
    echo -en "¿Estoy ante un usuario inteligente? Ahora solo nos queda intentar frenar el ataque, pero las esperanzas de lograrlo acaban de bajar significativamente...#$\"#%\"$\"$\"#$." | pv -qL15
}
O:2() {
echo "(2) ¿Asumimos que la IP proviene de China?"
}
O:3() {
echo "(3) ¿Asumimos que nos ataca el FBI?"
}
O:4() {
echo "(4) ¿Asumimos que nos atacan los rusos?"
}
O:5() {
echo "(5) Llamar a los técnicos"
}
R:5() {
echo -e "*Activando protocolo de comunicación con la oficina de los técnicos*\n...\n ...\n...\n... no contestan." | pv -qL15
}

R:A() {
    echo -en "$PROMPT " | pv -qL15
    echo -en "Está bien. Asumiremos que el atacante es de $ATACANTE/n" | pv -qL15 ; sleep 2
}
O:0() {
echo "(0) Volver al menú anterior"
}

# Instrucciones de input

ins() {
    echo "Por favor, introduce el número de tu elección (sin paréntesis)" | pv -qL15
}

# Lista de opciones principales

options_list() {
sleep 1
O:1
sleep 0.5
O:2
sleep 0.5
O:3
sleep 0.5
O:4
sleep 0.5
O:5
sleep 0.5
ins
}

# Función de inicio (y reinicio)
# Gracias a ella es posible regresar en el script

begining() {
options_list
reto1
}

# Evaluación de casos para cada opción particular

reto1() {
while [[ $OPTION != 1 && $OPTION != 2 && $OPTION != 3 && $OPTION != 4 && $OPTION != 5 ]] ; do
        # Pseudo prompt
	read -p "$PROMPT " OPTION
	case $OPTION in
	1) clear
		O:1:1
		sleep 0.5
		O:1:2
		sleep 0.5
		O:0
		sleep 0.5
		ins
		while [[ $OPTION1 != "1.1" && $OPTION1 != "1.2" ]] ; do
                read -p "$PROMPT " OPTION1
		case $OPTION1 in
			'1.1') clear
			       cat $PAISES_IP
			       read -p "$PROMPT " ATACANTE
			       echo $OPTION1;;
			       #$RETO2;;
			'1.2') clear
				R:1:2
				sleep 1
				source $RETO2;;
			'0') clear
				begining;;
		esac ;
		done ;;
	
	2) clear

		ATACANTE=CHINA
		R:A;;
		
	3) clear 
		ATACANTE=FBI
		R:A;;
	4) clear
		ATACANTE=RUSIA
		R:A;;
		
	5) clear
		R:5
		sleep 2.5
		ATACANTE=NULL;; #revisar;;
esac;
done
}

begining
echo $ATACANTE



#echo -en "$PROMPT "
#echo -en "Lo están haciendo bien " | pv -qL15
#echo -en "$GREEN"
#echo -en "$GROUPNAME" | pv -qL15
#echo -en "$NC"
#echo -e "..." | pv -qL15
