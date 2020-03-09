#!/bin/bash

bold='\033[1m'
BLACK='\e[0;30m'
GREEN='\e[1;32m'
BACKGROUND='\e[42m'
NC='\033[0m' # No Color

echo -e "${bold}Intrucciones del juego:${NC}\n"
echo -e "${BLACK}${BACKGROUND} * ${NC}${bold} Para jugar debe seleccionar las opciones que aparecen en pantalla.\n"
echo -e "${BLACK}${BACKGROUND} * ${NC}${bold} Dependiendo de las opciones elegidas, el final podria variar.\n"
echo -e "${BLACK}${BACKGROUND} * ${NC}${bold} Ten cuidado al elegir tus opciones, si cometes un error eso se verá afectado en tu puntuación final.\n"
echo -e "${BLACK}${BACKGROUND} * ${NC}${bold} Para sumar puntos, debe seleccionar las mejores opciones en cada escenario.\n"
echo -e "${BLACK}${BACKGROUND} * ${NC}${bold} El puntaje final aparecera al finalizar el juego, al final de los creditos.\n"
echo -e "${BLACK}${BACKGROUND} * ${NC}${bold} La duración total del reto es de 10 minutos, si tardas más de eso perderás automaticamente.\n"
echo -e "${BLACK}${BACKGROUND} * ${NC}${bold} Para comenzar con el reto, escriba ${GREEN}'Iniciar'.${NC}\n"