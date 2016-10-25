#!/bin/bash
#Init
FILE="/tmp/out.$$"
GREP="/bin/grep"
#....

# Só rode como root.
if [ "$(id -u)" != "0" ]; then
	echo "Você deve executar esse bash como root." 1>&2
	exit 1
# Só rode se informar a conexão.
elif [ $# == 0 ]; then
	echo "Você deve informar a conexão a ser consultada." 1>&2
	exit 1
fi

# Escaneie.
echo "Em $1"
arp-scan --interface=$1 --localnet
