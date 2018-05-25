#!/bin/bash


sudo apt-get update



function header
{
  echo ""
  echo ""
  echo "########## Setup ##########"
  echo ""
}

function install_apache2
{
  if which apache2 > /dev/null; then
    echo "Apache is already installed...skipping"
  else
    sudo apt-get install -y apache2
  fi

  echo "Apache2 version"
  apache2 -v
  echo "###################"
  echo ""
}

function install_curl
{
  if which curl > /dev/null; then
    echo "Curl is already installed...skipping"
  else
    sudo apt-get install -y curl
  fi
}

function firewallSetup {
  sudo ufw allow in "Apache full"
  sudo ufw allow in "OpenSSH"
}

function install_mySQL {
  sudo apt-get install -y mysql-server
  mysql_secure_installation
}

header "Installing apache2"
install_apache2
install_curl
firewallSetup
install_mySQL
