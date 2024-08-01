#!/bin/bash
#
# Scripts de instalação

set -e

## URLS

URL_GOOGLE_CHROME="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"

URL_FDROID="https://f-droid.org/F-Droid.apk"

URL_BAT_64="https://github.com/sharkdp/bat/releases/download/v0.24.0/bat-musl_0.24.0_amd64.deb"

##DIRETÓRIOS E ARQUIVOS

DIRETORIO_DOWNLOADS="$HOME/Downloads/programas"


# Atualizando pack e repositórios
apt_update(){
  apt update && apt upgrade -y
}

echo " "
echo " "

# Instalando recursos úteis

apt install vim -y
apt install git -y
apt install tmux -y
apt install npm -y
apt install clang -y
apt install composer -y
apt install bash -y
apt install curl -y
apt install lua51 -y
apt install man -y
apt install nano -y
apt install neovim -y
apt install nodejs -y
apt install wget -y
# apt install flatpak -y

## Instalando programas externos

install_externo() {
  makdir "$DIRETORIO_DOWNLOADS"
  # wget -c "$URL_GOOGLE_CHROME" -p "$DIRETORIO_DOWNLOADS"
  
  wget -c "$URL_FDROID" -p "$DIRETORIO_DOWNLOADS"
  wget -c "$URL_BAT_64" -P "$DIRETORIO_DOWNLOADS" ## ubuntu

  sudo dpkg -i bat-musl_0.24.0_amd64.deb -y
}

## Finalização, atualização e limpeza##

system_clean(){

apt update -y
# flatpak update -y
apt autoclean -y
apt autoremove -y
# nautilus -q
}
