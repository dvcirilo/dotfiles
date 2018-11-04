#!/bin/bash

source ask.sh

#Configuring cedilla
#Add following lines to /etc/environment
#GTK_IM_MODULE=cedilla
#QT_IM_MODULE=cedilla

#Nome no dash
#gsettings set com.canonical.indicator.session show-real-name-on-panel true

#volume on mouse side buttons
#https://matmunn.me/post/binding-volume-control-mouse-buttons-ubuntu/

# Nvidia lagginess https://ubuntuforums.org/showthread.php?t=2374405


#basic stuff that I use
ask "Install git, vim, zsh?" Y && sudo apt install git vim-gtk zsh

#necessary for RVM
#ask "Install what's necessary for RVM and Ruby development?" Y && sudo apt install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison curl ruby ruby-dev

#necessary for almost anything
ask "Install ubuntu-restricted-extras for fonts, flash, etc?" Y && sudo apt install ubuntu-restricted-extras

#install the nice Mac font Monaco
ask "install the nice Mac font Monaco?" Y && sudo mkdir -p /usr/share/fonts/truetype/custom/ && sudo cp Monaco_Linux.ttf /usr/share/fonts/truetype/custom/ && sudo fc-cache -f -v

#necessary for vimfiles.
ask "Install exuberant-ctags and ncurses-term for nice vim usage?" Y && sudo apt install exuberant-ctags ncurses-term

#necessary for mysql db
#ask "Install what's necessary for MySQL?" Y && sudo apt install mysql-server && mysql_install_db && mysql_secure_installation

#LAMP
#ask "Install LAMP, for php development?" Y && sudo apt install apache2 libapache2-mod-php5 libapache2-mod-auth-mysql php5-mysql

#LEMP
#ask "Install LEMP, for php development?" Y && sudo apt install nginx php5-fpm php5-mysql 

#RVM
#ask "Install RVM, to manage Rubies?" Y && \curl -L https://get.rvm.io | bash -s stable --ruby

#Silence
if ask "Silence Ubuntu Greeter?" Y; then
  sudo sh -c "echo '[com.canonical.unity-greeter]' >> /usr/share/glib-2.0/schemas/50_unity-greeter.gschema.override; echo 'play-ready-sound = false' >> /usr/share/glib-2.0/schemas/50_unity-greeter.gschema.override"
  sudo glib-compile-schemas /usr/share/glib-2.0/schemas/
fi

#Swap Ctrl and Caps Lock
ask "Swap Ctrl and Caps Lock?" Y && gsettings set org.gnome.desktop.input-sources xkb-options "['ctrl:swapcaps']"

#Java
if ask "Install IcedTea plugin(Java)" Y; then
  sudo apt install icedtea-plugin
fi

if ask "Configure Razer Mouse side buttons as volume buttons" Y; then
  sudo apt install xbindkeys xautomation
  cp xbindkeysrc ../.xbindkeysrc
  xbindkeys
fi

#Set dotfiles
ask "Set my dotfiles?" Y && /bin/bash ~/.dotfiles/dotfiles.sh
