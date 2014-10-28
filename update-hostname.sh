#!/bin/bash               
 
#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#
# update-hosts.sh             #
# Ecrit par Nicolas BUCCO             #
# Decembre 2012                             #
# This is a very rudimentary bash script for updating a linux hosts #
# file. For questions or comments contact the author at     #
#                                   #
#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#
 
# Vérifie que le shell est BASH
if test -z "$BASH" ; then
  echo "update-hosts.sh must be run in the BASH shell... Aborting."; echo;
  exit 192
fi
 
# Vérifie que l utilisateur est root
if [ $(whoami) != "root" ]; then
  echo "update-hosts.sh must be run as root... Aborting."; echo;
  exit 192
fi
 
#Demande quel nouveau nom on desir
echo "Nouveau nom pour la machine ? followed by [ENTER]:"
read newHost
 
#inscrit le nouveau nom dans hostname
echo $newHost > /etc/hostname
 
#on recupere l'ancien nom de la machine
#ici NR defini le numero de ligne
oldHost = cat /etc/hosts | awk 'NR==2 {print $2}'
 
#on remplace l ancien nom par le nouveau dans le fichier hosts
sed -i 's/$oldHost/$newHost/g' /etc/hosts
