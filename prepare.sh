#!/bin/bash

#Configuring cedilla
# http://gpupo.com/c-cedilha-no-ubuntu-910-resolvido

#basic stuff that I use
echo "Installing git, vim, zsh..."
sudo apt-get install git vim-gtk zsh

#necessary for RVM
echo "Installing what's necessary for RVM and Ruby development"
sudo apt-get install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison curl ruby ruby-dev

#necessary for almost anything
echo "Installing ubuntu-restricted-extras for fonts, flash, etc"
sudo apt-get install ubuntu-restricted-extras

#necessary for vimfiles.
echo "Installing exuberant-ctags and ncurses-term for nice vim usage"
sudo apt-get install exuberant-ctags ncurses-term

#necessary for mysql db
echo "Installing what's necessary for MySQL"
sudo apt-get install libmysqlclient-dev mysql-server mysql-client mysql-common mysql-admin

#LAMP
echo "Installing LAMP, for php development"
sudo apt-get install apache2 libapache2-mod-php5 libapache2-mod-auth-mysql php5-mysql

#RVM
\curl -L https://get.rvm.io | bash -s stable --ruby

#Set dotfiles
/bin/bash ~/.dotfiles/dotfiles.sh

#audacious 2.5.x
#sudo add-apt-repository ppa:nilarimogard/webupd8
#sudo apt-get update
#sudo apt-get install audacious
