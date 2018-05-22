#!/bin/bash


sudo apt-get update



function header
{
  echo ""
  echo ""
  echo "########## $1 ##########"
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

header "Installing apache2"
install_apache2