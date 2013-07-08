# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="halan"

# Example aliases
alias zshconfig="editor ~/.zshrc"
alias ohmyzsh="editor ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rvm)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

alias ll="ls -la"
alias la="ls -a"

# Hashes ou aliases para os diretórios sérios.
hash -d ifrn="/home/diego/Dropbox/ifrn/"
hash -d mestrado="/home/diego/Dropbox/mestrado/"

# Garante que a seta pra cima carregue o histórico daquele comando
bindkey "${terminfo[kcuu1]}" up-line-or-search
bindkey "${terminfo[kcud1]}" down-line-or-search

EDITOR=vim

if [ -d $HOME/.rvm/bin ]; then
  PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
  source $HOME/.rvm/scripts/rvm
fi

if [ -d /opt/Xilinx/14.2/ISE_DS/ISE/bin/lin ]; then
  PATH=$PATH:/opt/Xilinx/14.2/ISE_DS/ISE/bin/lin # Add ISE to path
fi

#+++@@###$    Path para o texlive! Para fazer o sudo ver o tlmgr, usar:
#                 sudo env PATH="$PATH" tlmgr path add
if [ -d /usr/local/texlive/2013/bin/x86_64-linux ]; then
  PATH=$PATH:/usr/local/texlive/2013/bin/x86_64-linux # Add Latex to path
fi
