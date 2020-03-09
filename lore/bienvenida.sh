#!/bin/bash

# Dirs
DIR=$(pwd)
JUMPSCARES=$DIR/jumpscares

# Mensajes Reutilizables
PROMPT='automata@dace:'

# Jumpscares
GLITCH=$JUMPSCARES/glitch.ascii
GLITCH_INVERTED=$JUMPSCARES/glitch_inverted.ascii


### MAIN ###

clear

echo -en "Recibiendo mensaje de auxilio" | pv -qL8
echo -en "..." | pv -qL1

sleep 1

echo -en "\n${PROMPT} "
echo -en "¡Hola! Soy un autómata programado por " | pv -qL8
echo -en "D...A...C...$%^&!@#$." | pv -qL4


echo -en "\n${PROMPT} "
echo -en "Soy el servidor principal de la universidad. En estos momentos estoy bajo ataque, de una fuente desconocida." | pv -qL12

echo -en "\n${PROMPT} "
echo -en "El objetivo parece ser borrar los datos de los estudiantes de la universidad. Los atacantes son muy hábiles y no permiten que pueda respaldar esta información." | pv -qL12

echo -en "\n${PROMPT} "
echo -en "Mi protocolo de emergencia ya no responde. Tampoco puedo apagar el servidor, si se apaga la información se perderá para siempre." | pv -qL12

sleep 2

echo -en "\n${PROMPT} "
echo -en "Eres la última esperanza." | pv -qL6

sleep 2

echo -en "\n${PROMPT} "
echo -en "Yo te guiare hasta..." | pv -qL6

sleep 1

cat $GLITCH
sleep 0.025
cat $GLITCH_INVERTED
sleep 0.025
cat $GLITCH
sleep 0.025
cat $GLITCH_INVERTED
sleep 0.025
cat $GLITCH
sleep 0.025
cat $GLITCH_INVERTED
sleep 0.025
cat $GLITCH
sleep 0.025
cat $GLITCH_INVERTED
sleep 0.025

clear

echo -e "Recibiendo mensaje de auxilio..."
echo -e "${PROMPT} ¡Hola! Soy un autómata programado por D...A...C...$%^&!@#$."
echo -e "${PROMPT} Soy el servidor principal de la universidad. En estos momentos estoy bajo ataque, de una fuente desconocida."
echo -e "${PROMPT} El objetivo parece ser borrar los datos de los estudiantes de la universidad. Los atacantes son muy hábiles y no permiten que pueda respaldar esta información."
echo -e "${PROMPT} Mi protocolo de emergencia ya no responde. Tampoco puedo apagar el servidor, si se apaga la información se perderá para siempre."
echo -e "${PROMPT} Eres la última esperanza."

echo -en "${PROMPT} Yo te guiare hasta..."
echo -e "$%^&!@#$...h4st4 d0nd3 m3 s34 p0s1bl3...$%^&!@#$..." | pv -qL12
