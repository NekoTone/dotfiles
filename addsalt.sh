#/bin/bash
if [ "$(whoami)" != "root" ]
then
  echo "Usage: sudo $0";
  exit;
fi

wget -O - https://repo.saltstack.com/apt/debian/8/amd64/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add -
echo "deb http://repo.saltstack.com/apt/debian/8/amd64/latest jessie main" > /etc/apt/sources.list.d/saltstack.list 
apt-get update 
apt-get -y install salt-minion 
sed -i 's/#master: salt$/master: 192.168.9.30/' /etc/salt/minion 
systemctl status salt-minion.service

