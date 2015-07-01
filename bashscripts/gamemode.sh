#!/bin/sh

# Run as root, ok?

if [ "$(id -u)" != "0" ]; then
		echo "Você deve executar este script como root." 1>&2
		exit 1
fi

if [ "$1" = "on" ]
then
	sudo -u lucas pkill compton
	cpupower frequency-set -g performance
elif [ "$1" = "off" ]
then
	cpupower frequency-set -g powersave
	sudo -u lucas compton &
else
	echo gamemode: Opção $1 desconhecida.
fi
