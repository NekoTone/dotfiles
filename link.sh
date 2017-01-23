#!/bin/sh
SOURCE=$(dirname $0)

#echo "The script you are running has basename `basename $0`, dirname `dirname $0`"
#echo "The present working directory is `pwd`"
#echo $SOURCE
#echo $HOME

for i in `find . -maxdepth 1 \( ! -iname ".git" ! -iname "*.swp" ! -iname ".gitmodules" ! -iname "link.*" \)`
do
  TMP=$(echo $i | sed 's/'$SOURCE'\///')
  #echo $PWD/$TMP
  rm -rf $HOME/$TMP
  ln -s $PWD/$TMP $HOME/$TMP
  echo "Symbolic link "$TMP" create."
done
