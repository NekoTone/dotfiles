#/bin/bash
  l=$1
  if [ "$l" = "" ]; then
    l=8
  fi
  tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs

