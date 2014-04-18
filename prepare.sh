#!/bin/bash

source ask.sh

#Configuring cedilla
#Add following lines to /etc/environment
#GTK_IM_MODULE=cedilla
#QT_IM_MODULE=cedilla

#Nome no dash
#gsettings set com.canonical.indicator.session show-real-name-on-panel true


#basic stuff that I use
ask "Install git, vim, zsh?" Y && sudo apt-get install git vim-gtk zsh

#necessary for RVM
ask "Install what's necessary for RVM and Ruby development?" Y && sudo apt-get install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison curl ruby ruby-dev

#necessary for almost anything
ask "Install ubuntu-restricted-extras for fonts, flash, etc?" Y && sudo apt-get install ubuntu-restricted-extras

#install the nice Mac font Monaco
ask "install the nice Mac font Monaco?" Y && curl -kL https://raw.github.com/cstrap/monaco-font/master/install-font-ubuntu.sh | bash

#necessary for vimfiles.
ask "Install exuberant-ctags and ncurses-term for nice vim usage?" Y && sudo apt-get install exuberant-ctags ncurses-term

#necessary for mysql db
ask "Install what's necessary for MySQL?" Y && sudo apt-get install libmysqlclient-dev mysql-server mysql-client mysql-common mysql-admin

#LAMP
ask "Install LAMP, for php development?" Y && sudo apt-get install apache2 libapache2-mod-php5 libapache2-mod-auth-mysql php5-mysql

#RVM
ask "Install RVM, to manage Rubies?" Y && \curl -L https://get.rvm.io | bash -s stable --ruby

#Set dotfiles
ask "Set my dotfiles?" Y && /bin/bash ~/.dotfiles/dotfiles.sh
