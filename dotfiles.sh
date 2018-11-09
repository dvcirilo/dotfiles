#!/bin/bash
source ask.sh

#My face on gnome
ask "Getting my face from gravatar.com and putting it into .face" Y && wget "http://gravatar.com/avatar/4e2372887c285333cf7be7901de22bb3?s=200" -O ~/.face

#ZSH config
if ask "Starting to configure oh-my-zsh" Y; then
  rm -rf ~/.oh-my-zsh
  git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh 
  echo "source ~/.dotfiles/zshrc" >  ~/.zshrc
  mkdir ~/.oh-my-zsh/custom/themes
  cp ~/.dotfiles/dvcirilo.zsh-theme ~/.oh-my-zsh/custom/themes/
  if [ "$SHELL" != "/bin/zsh" ]; then
    chsh -s /bin/zsh
  fi
fi

#vim config
if ask "Configuring VIM with my own dotfiles" Y; then
  rm -rf ~/.vim
  git clone https://github.com/dvcirilo/vimfiles.git  ~/.vim
  cd ~/.vim/
  git submodule update --init --recursive
  cd ~
  echo "source ~/.vim/vimrc" > ~/.vimrc
fi

#Bashrc
if ask "Configuring Bashrc" Y; then
  echo "source ~/.dotfiles/bashrc" > ~/.bashrc
fi

#Gitconfig
if ask "Configuring git" Y; then
  rm -f ~/.gitconfig
  ln -s ~/.dotfiles/gitconfig ~/.gitconfig
fi
