#!/bin/bash

#My face on gnome
echo "Getting my face from gravatar.com and putting it into .face"
wget "http://gravatar.com/avatar/4e2372887c285333cf7be7901de22bb3?s=200" -O .face

#ZSH config
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh 
echo "source ~/.dotfiles/zshrc" > ~/.zshrc
cp ~/.dotfiles/halan.zsh-theme ~/.oh-my-zsh/themes/

#vim config
echo "Configuring VIM with my own dotfiles"
git clone git://github.com/eletronzip/vimfiles.git > ~/.vim
cd ~/.vim/
git submodule update --init
cd ~
echo "source ~/.vim/vimrc" > ~/.vimrc
echo "source ~/.vim/vimrc\ncolorscheme railscasts" > ~/.gvimrc

#Bashrc
echo "source ~/.dotfiles/bashrc" > ~/.bashrc
echo "source ~/.dotfiles/bashrc" > ~/.bash_profile

#Gitconfig
ln -s ~/.dotfiles/gitconfig ~/.gitconfig

#Gemrc
ln -s ~/.dotfiles/gemrc ~/.gemrc
