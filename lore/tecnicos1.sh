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

# Jumpscares
JUMPSCARES=$DIR/jumpscares
FUCKYOU=$JUMPSCARES/fuckyou.ascii
FUCKYOU_INVERTED=$JUMPSCARES/fuckyou_inverted.ascii

# Characters
CHARACTERS=$DIR/characters
PHONE=$CHARACTERS/phone.ascii

####################################################################################################

### Variables de entorno necesarias ###

# Nombre del grupo
GROUPNAME=$1

####################################################################################################

### Mensajes Reutilizables ###

# Automata
PROMPT=$(echo -e "${GREEN_R}automata@DACE${NC}:${CYAN_R}~${NC}\$")

# Prompt de espera
MENSAJE_READ=$(echo -e "${bold}[Presiona enter para continuar]${NC}")

####################################################################################################

### Main ###

clear
cat $PHONE | pv -qL2222
echo -en "\n$PROMPT "
echo -e "${YELLOW}Llamando a los técnicos...${NC}" | pv -qL10
sleep 1
echo -e "${CYAN}[Activando protocolo de comunicación segura con la oficina de los técnicos]${NC}"
sleep 2
echo -e "${bold}OpenSSH_8.2p1, OpenSSL 1.1.1d  10 Sep 2019${NC}"
echo -e "${bold}debug1:${NC} Reading configuration data /home/manuel/.ssh/config"
echo -e "${bold}debug1:${NC} /home/${GROUPNAME}/.ssh/config line 1: Applying options for *"
echo -e "${bold}debug1:${NC} /home/${GROUPNAME}/.ssh/config line 16: Applying options for dace"
echo -e "${bold}debug1:${NC} Reading configuration data /etc/ssh/ssh_config"
sleep 1
echo -e "${bold}debug1:${NC} Connecting to 159.90.9.130 [159.90.9.130] port 22."
echo -e "${bold}debug1:${NC} Connection established."
echo -e "${bold}debug1:${NC} identity file /home/${GROUPNAME}/.ssh/dace_rsa type 0"
echo -e "${bold}debug1:${NC} identity file /home/${GROUPNAME}/.ssh/dace_rsa-cert type -1"
echo -e "${bold}debug1:${NC} Local version string SSH-2.0-OpenSSH_8.2"
sleep 1
echo -e "${bold}debug1:${NC} Remote protocol version 2.0, remote software version OpenSSH_7.9p1 Debian-10+deb10u2"
echo -e "${bold}debug1:${NC} match: OpenSSH_7.9p1 Debian-10+deb10u2 pat OpenSSH* compat 0x04000000"
echo -e "${bold}debug1:${NC} Authenticating to 159.90.9.130:22 as '${GROUPNAME}'"
echo -e "${bold}debug1:${NC} SSH2_MSG_KEXINIT sent"
echo -e "${bold}debug1:${NC} SSH2_MSG_KEXINIT received"
sleep 1
echo -e "${bold}debug1:${NC} kex: algorithm: curve25519-sha256"
echo -e "${bold}debug1:${NC} kex: host key algorithm: ecdsa-sha2-nistp256"
echo -e "${bold}debug1:${NC} kex: server->client cipher: chacha20-poly1305@openssh.com MAC: <implicit> compression: none"
echo -e "${bold}debug1:${NC} kex: client->server cipher: chacha20-poly1305@openssh.com MAC: <implicit> compression: none"
echo -e "${bold}debug1:${NC} expecting SSH2_MSG_KEX_ECDH_REPLY"
sleep 1
echo -e "${bold}debug1:${NC} Server host key: ecdsa-sha2-nistp256 SHA256:tnkilUeNkSiY29NYEUJfIX15Rux5yeB0WaJl8"
echo -e "${bold}debug1:${NC} Host '159.90.9.130' is known and matches the ECDSA host key."
ppecho -e "${bold}debug1:${NC} Found key in /home/${GROUPNAME}/.ssh/known_hosts:12"
echo -e "${bold}debug1:${NC} rekey out after 13427728 blocks"
echo -e "${bold}debug1:${NC} SSH2_MSG_NEWKEYS sent"
sleep 1
echo -e "${bold}debug1:${NC} expecting SSH2_MSG_NEWKEYS"
echo -e "${bold}debug1:${NC} SSH2_MSG_NEWKEYS received"
echo -e "${bold}debug1:${NC} rekey in after 134217728 blocks"
echo -e "${bold}debug1:${NC} Will attempt key: /home/${GROUPNAME}/.ssh/dace_rsa RSA SHA256:QKvarJ9eKdIoZZCoKvClMrzx9caX4suyNLkWJI8 explicit"
echo -e "${bold}debug1:${NC} SSH2_MSG_EXT_INFO received"
sleep 1
echo -e "${bold}debug1:${NC} kex_input_ext_info: server-sig-algs=<ssh-ed25519,ssh-rsa,rsa-sha2-256,rsa-sha2-512,ssh-dss,ecdsa-sha2-nistp256,ecdsa-sha2-nistp384,ecdsa-sha2-nistp521>"
echo -e "${bold}debug1:${NC} SSH2_MSG_SERVICE_ACCEPT received"
sleep 2
echo -e "${RED}ERROR:${NC} The connection has not been established"
sleep 1
echo -en "$PROMPT "
echo -en "${YELLOW}No contestan...${NC}" | pv -qL10
echo -e "\n"
sleep 1
read -p "$MENSAJE_READ"