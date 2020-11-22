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

#Final bueno

# Characters
CHARACTERS=$DIR/characters
DISCORD=$CHARACTERS/discord.ascii
UNKNOW=$CHARACTERS/unknow.ascii
UNKNOW_CHIKO=$CHARACTERS/unknow_chiquito.ascii
MRROBOT=$CHARACTERS/mrrobot.ascii
PILDORA=$CHARACTERS/pildora.ascii
FSOCIETY_CHAR=$CHARACTERS/fsociety.ascii

# Jumpscares
JUMPSCARES=$DIR/jumpscares
WINDOWS=$JUMPSCARES/windows.ascii
WINDOWS_INVERTED=$JUMPSCARES/windows_inverted.ascii

# Carpeta de lore
LORE=$DIR/lore

#FINAL BUENO DE TODOS

FINAL_BUENO_DE_TODOS=$LORE/final_gfecito.sh

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
LOG=$LORE/DELETEALL.log

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
WROSE=$(echo -e "${RED_R}whiterose@fsociety${NC}:${CYAN_R}~${NC}\$")

# Unknow
PROMPTUNK=$(echo -e "${YELLOW_R}juvgrebfr@sfbpvrgl${NC}:${YELLOW_R}~${NC}\$")

# Rally-PC
PROMPT_PC=$(echo -e "${GREEN}${GROUPNAME}${GREEN_R}@Rally-PC${NC}:${CYAN_R}~${NC}\$")

# Prompt de espera
MENSAJE_READ=$(echo -e "${bold}[Presiona enter para continuar]${NC}")

####################################################################################################

### MAIN ###

function FINAL_BUENO_DE_TODOS {
    sleep 1
    source $FINAL_BUENO_DE_TODOS
}

function criptoExitoso {
    clear
    echo -en "\n$PROMPTUNK "
    echo -e "If you pull the right strings, a puppet will dance any way you desire." | pv -qL15
    sleep 3
    cat $FSOCIETY_CHAR | pv -qL2222
    sleep 1
    echo -en "$WROSE "
    echo -en "¡Excelente! Has demostrado tu ingenio." | pv -qL20
    echo -en "\n$WROSE "
    echo -en "Pero no te preocupes, esto solo era una prueba, ya se había cerrado la conexión del atacante." | pv -qL20
    echo -en "$WROSE "
    echo -en "¡Excelente! Has demostrado tu ingenio." | pv -qL20
    echo -en "\n$WROSE "
    echo -en "En realidad, uno de mis compañeros, al que me referiré como ${bold}Gfecito${NC}, perteneció a la USB." | pv -qL20
    echo -en "\n$WROSE "
    echo -en "Él ha monitoreado desde un principio todo el ataque, y ha esperado hasta el último momento para actuar." | pv -qL20
    FINAL_BUENO_DE_TODOS
}

function criptoErroneo {
    clear
    echo -en "\n$PROMPTUNK "
    echo -e "The concept of waiting bewilders me. There are always deadlines. There are always ticking clocks. That's why you must manage your time." | pv -qL15
    sleep 3
    cat $FSOCIETY_CHAR | pv -qL2222
    sleep 1
    echo -en "$WROSE "
    echo -en "Muy bien. He decidido ayudarte..." | pv -qL20
    echo -en "\n$WROSE "
    echo -en "Espera un segundo..." | pv -qL10
    sleep 5
    echo -en "\n$WROSE "
    echo -en "Listo." | pv -qL20
    echo -en "\n$WROSE "
    echo -en "No volverás a tener problemas de estos hackers." | pv -qL20
    echo -en "\n$WROSE "
    echo -en "Sí, así de fácil..." | pv -qL15
    echo -en "\n$WROSE "
    echo -e "Sin embargo, he decidido juzgar tu incompetencia, y destruir la base de datos de todas formas...\n" | pv -qL20
    sleep 3
    read -p "$MENSAJE_READ"
    clear
    echo -en "\n$WROSE "
    echo -en "${RED}[Destruyendo base de datos]${NC}" | pv -qL20
    sleep 1
    cat $LOG | pv -qL3333
}
clear
echo -e "${CYAN}[Conectando a la página]${NC}"
sleep 2
echo -en "\n$PROMPTUNK "
echo -e "Every hacker has her fixation. You hack people, I hack time. So you should know that when I set a time line, there's a reason." | pv -qL15
sleep 3
clear
cat $FSOCIETY_CHAR | pv -qL2222
echo -en "$WROSE "
echo -en "Hola, intruso." | pv -qL20
echo -en "\n$WROSE "
echo -en "He detectado tus intentos de hackearme." | pv -qL20
echo -en "\n$WROSE "
echo -en "Estoy recibiendo mensajes de tu servidor..." | pv -qL20
echo -en "\n$WROSE "
echo -en "Ah..." | pv -qL5
echo -en "\n$WROSE "
echo -en "Así que solo eres un inexperto." | pv -qL20
echo -en "\n$WROSE "
echo -en "Entiendo..." | pv -qL10
echo -en "\n$WROSE "
echo -en "He recibido la información completa." | pv -qL20
echo -en "\n$WROSE "
echo -en "He decidido ayudarte a solventar el ataque de ese atacante." | pv -qL20
echo -en "\n$WROSE "
echo -e "Solo accederé a ayudarte si puedes resolver el siguiente acertijo de criptografía:\n" | pv -qL20
sleep 2
read -p "$MENSAJE_READ"
clear
cat $FSOCIETY_CHAR | pv -qL2222
sleep 1
echo -en "$WROSE "
echo -en "La criptografía es el arte de encriptar mensajes." | pv -qL20
echo -en "\n$WROSE "
echo -en "Esto significa que cualquier persona ajena que vea el mensaje no podría entender su contenido." | pv -qL20
echo -en "\n$WROSE "
echo -en "Usualmente, se tiene una llave para entender los mensajes." | pv -qL20
echo -en "\n$WROSE "
echo -en "Por ejemplo, si usamos la siguiente llave:" | pv -qL20
echo -en "\n$WROSE "
echo -en "${RED_R}h${NC}${bold}->${NC}${BLUE_R}r${NC}, ${RED_R}o${NC}${bold}->${NC}${BLUE_R}u${NC}, ${RED_R}l${NC}${bold}->${NC}${BLUE_R}j${NC}, ${RED_R}a${NC}${bold}->${NC}${BLUE_R}l${NC}" | pv -qL30
sleep 1
echo -en "\n$WROSE "
echo -en "El mensaje ${bold}\"hola\"${NC} sería transformado al mensaje ${bold}\"rujl\"${NC}." | pv -qL20
echo -en "\n$WROSE "
echo -en "Esta clase de criptografía se llama criptografía simétrica porque ambas partes usan la misma llave." | pv -qL20
echo -en "\n$WROSE "
echo -e "Para recuperar el mensaje debe devolver el cambio, es decir, hacer lo inverso que dice la llave.\n" | pv -qL20
sleep 2
read -p "$MENSAJE_READ"
clear
cat $FSOCIETY_CHAR | pv -qL2222
sleep 1
echo -en "$WROSE "
echo -en "Dada la siguiente llave:" | pv -qL15
echo -en "\n$WROSE "
echo -en "Dado el abecedario en español, las letras desde la ${bold}'a'${NC} hasta la ${bold}'l'${NC} se intercambian por las letras dos posiciones después." | pv -qL20
echo -en "\n$WROSE "
echo -en "Por ejemplo, ${bold}'a'${NC} pasa a ser ${bold}'c'${NC} y ${bold}'l'${NC} pasa a ser ${bold}'n'${NC}." | pv -qL20
echo -en "\n$WROSE "
echo -en "Las letras desde la ${bold}'r'${NC} hasta la ${bold}'z'${NC} cambian por sus letras 3 posiciones antes." | pv -qL20
echo -en "\n$WROSE "
echo -en "Es decir, la ${bold}'r'${NC} es ahora la ${bold}'o'${NC}, y la ${bold}'z'${NC} es la ${bold}'w'${NC}." | pv -qL20
echo -en "\n$WROSE "
echo -en "Las letras entre ${bold}'m'${NC} y ${bold}'q'${NC} quedan inalteradas." | pv -qL20
echo -en "\n$WROSE "
echo -en "Cuidado con esto último." | pv -qL20
sleep 3
echo -en "\n$WROSE "
echo -en "Escriba el significado del siguiente mensaje:" | pv -qL20
echo -en "\n$WROSE "
echo -e "Hgnkw cnksgopcoko RPD." | pv -qL20
sleep 2
while true
do
    echo -en "${PROMPT_PC} "
    read OPTION
    if [[ $OPTION = 'Feliz aniversario USB' || $OPTION = 'FELIZ ANIVERSARIO USB' || $OPTION = 'feliz aniversario USB' || $OPTION = 'feliz aniversario usb' ]]; then
        echo -en "\n$WROSE "
        echo -en "${YELLOW}...${NC}" | pv -qL5
        sleep 0.5
        echo -en "\n$WROSE "
        echo -en "${GREEN}Correcto.${NC}" | pv -qL15
        criptoExitoso
        break
    else
        echo -en "$WROSE "
        echo -en "${RED}¡ERROR!" | pv -qL15
        sleep 2
        echo -en "\n$WROSE "
        echo -en "Te daré otra oportunidad más" | pv -qL20
        read OPTION1
        sleep 2
        if [[ $OPTION = 'Feliz aniversario USB' || $OPTION = 'FELIZ ANIVERSARIO USB' || $OPTION = 'feliz aniversario USB' || $OPTION = 'feliz aniversario usb' ]]; then
            echo -en "$WROSE "
            echo -en "${YELLOW}...${NC}" | pv -qL5
            sleep 0.5
            echo -en "\n$WROSE "
            echo -en "${GREEN}Correcto.${NC}" | pv -qL15
            criptoExitoso
            break
        else
            echo -en "$WROSE "
            echo -en "${YELLOW}...${NC}" | pv -qL5
            sleep 0.5
            echo -en "\n$WROSE "
            echo -en "${RED}Incorrecto.${NC}" | pv -qL15
            criptoErroneo
            break
        fi
        break
    fi
done
echo -e "\n"
sleep 3
read -p "$MENSAJE_READ"