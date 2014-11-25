#!/bin/bash

#CPUTIME=$(ps -eo pcpu | awk 'NR>1' | awk '{tot=tot+$1} END {print tot}')
#CPUCORES=$(cat /proc/cpuinfo | grep -c processor)
#UP=$(echo `uptime` | awk '{ print $3 " " $4 }')
#PRIVATEIP=$(hostname -i | awk '{ print $2 }')
VERT="\\033[1;32m"
NORMAL="\\033[0;39m"
ROUGE="\\033[1;31m"
ROSE="\\033[1;35m"
BLEU="\\033[1;34m"
BLANC="\\033[0;02m"
BLANCLAIR="\\033[1;08m"
JAUNE="\\033[1;33m"
CYAN="\\033[1;36m"
GRIS="\\033[1;30m"
FBLANC="\\033[1;07m"
FGRIS="\\033[6;40m"

# site http://www.patorjk.com/software/taag/ police Rectangle
echo -e "

$BLANC   _ _ _     ___         
$BLANC  |$FGRIS | | $BLANC|___|$FGRIS | $BLANC|___ ___ 
$BLANC  |$FGRIS | | $BLANC|$FGRIS -_$BLANC|\\033[6;40m_  $BLANC|$FGRIS  _$BLANC|$FGRIS -_$BLANC|
$BLANC  |\\033[6;40m_____$BLANC|\\033[6;40m___$BLANC| |\\033[6;40m_$BLANC|\\033[6;40m_$BLANC| |\\033[6;40m___$BLANC|
  
                           
$GRIS  -> Hostname : $BLANC`hostname -s`
$GRIS  -> System   : $BLANC`cat /etc/issue | awk {'print $1'}i | sed q` `cat /etc/debian_version`
$GRIS  -> Kernel   : $BLANC`uname -or`
$GRIS  -> Archi    : $BLANC`uname -m`
$GRIS  -> Uptime   : $BLANC`uptime | awk {'print $3'} | sed s/,//g` days

" > /etc/motd
cat /etc/motd
