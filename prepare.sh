#!/bin/bash

#basic stuff that I use
sudo apt-get install git vim

#necessary for RVM
sudo apt-get install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison curl ruby ruby-dev

#necessary for web navigation
sudo apt-get install flashplugin-installer ttf-mscorefonts-installer

#necessary for akita's vimfiles.
sudo apt-get install exuberant-ctags ncurses-term

#necessary for mysql db
sudo apt-get install libmysqlclient-dev mysql-server mysql-client mysql-common

#audacious 2.5.0
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo apt-get update
sudo apt-get install audacious

