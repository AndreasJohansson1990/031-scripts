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
    sudo apt-get install apache2
  fi

  echo "Apache version"
  apache -v
  echo "###################"
  echo ""
}