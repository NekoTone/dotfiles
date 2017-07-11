#/bin/bash
  l=$1
  if [ "$l" = "" ]; then
    l=8
  fi
if [[ "$OSTYPE" == "linux-gnu" ]]; then
  tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs 
elif [[ "$OSTYPE" == "darwin"* ]]; then
  LC_CTYPE=C tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs 
fi


