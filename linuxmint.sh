#!/bin/bash

######################################################################

# script pos instalação Linux Mint: https://linuxmint.com/download.php

######################################################################

# update do sistema apos primeiro login
sudo apt update -y

######################################################################

# instalando gerenciador de arquivos NALA no lugar do apt
sudo apt install nala

######################################################################

# atualizando o sistema (completo, pode pedir confirmação)
sudo nala update && sudo nala upgrade

######################################################################

# criando ponto de restauração (timeshift)
sudo timeshift --create

######################################################################

# removendo programas (pouco utilizados)
sudo apt remove --purge redshift warpinator transmission* mintreport hexchat rhythmbox 

######################################################################

# adicionando programas 
sudo nala install preload prelink stacer git curl tlp wget micro build-essencial ubuntu-restricted-extras gnome-boxes

######################################################################