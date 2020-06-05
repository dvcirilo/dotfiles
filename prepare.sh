#!/bin/bash

source ask.sh

#basic stuff that I use
ask "Install git, vim, zsh?" Y && sudo apt install git vim-gtk zsh

#necessary for RVM
#ask "Install what's necessary for RVM and Ruby development?" Y && sudo apt install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison curl ruby ruby-dev

#necessary for almost anything
ask "Install ubuntu-restricted-extras for fonts, etc?" Y && sudo apt install ubuntu-restricted-extras

#flashplayer
ask "Install flash plugin?" Y && sudo apt install flashplugin-installer

#install the nice Mac font Monaco
ask "install the nice Mac font Monaco?" Y && sudo mkdir -p /usr/share/fonts/truetype/custom/ && sudo cp $DOTFILES/Monaco_for_Powerline.ttf /usr/share/fonts/truetype/custom/ && sudo fc-cache -f -v

# Set Monaco as the monospace font
ask "Set Monaco as the monospace font?" Y && mkdir -p $HOME/.config/fontconfig && cat $DOTFILES/fonts.conf >> $HOME/.config/fontconfig/fonts.conf && fc-cache -f -v

#necessary for vimfiles.
ask "Install exuberant-ctags and ncurses-term for nice vim usage?" Y && sudo apt install exuberant-ctags ncurses-term

#Silence
if ask "Silence Ubuntu Greeter?" Y; then
  sudo sh -c "echo '[com.canonical.unity-greeter]' >> /usr/share/glib-2.0/schemas/50_unity-greeter.gschema.override; echo 'play-ready-sound = false' >> /usr/share/glib-2.0/schemas/50_unity-greeter.gschema.override"
  sudo glib-compile-schemas /usr/share/glib-2.0/schemas/
fi

#Swap Ctrl and Caps Lock
ask "Swap Ctrl and Caps Lock? (works on gnome)" Y && gsettings set org.gnome.desktop.input-sources xkb-options "['ctrl:swapcaps']"

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
