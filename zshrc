# My dotfiles folder
DOTFILES=$HOME/.dotfiles

# History
source $DOTFILES/zsh/history.zsh

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Completion
source $DOTFILES/zsh/completion.zsh

# Changing/making/removing directory
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

# Colors to the prompt
autoload -U colors && colors

# Enable ls colors
export LSCOLORS="Gxfxcxdxbxegedabagacad"

# For GNU ls, we use the default ls color theme. They can later be overwritten by themes.
if [[ -z "$LS_COLORS" ]]; then
  (( $+commands[dircolors] )) && eval "$(dircolors -b)"
fi

ls --color -d . &>/dev/null && alias ls='ls --color=tty' || { ls -G . &>/dev/null && alias ls='ls -G' }

# Take advantage of $LS_COLORS for completion as well.
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# source shrink_path
source $DOTFILES/zsh/shrink_path.zsh

# Load prompt
setopt prompt_subst
source $DOTFILES/zsh/zsh-prompt


# Defining text editor 
export EDITOR=vim

# Aliases
alias ll="ls -la"
alias la="ls -a"

# Hashes to most used dirs.
setopt cdablevars
hash -d ifrn="$HOME/Dropbox/ifrn/"
hash -d phd="$HOME/Dropbox/phd/"

# Search history of typed command with up/down keys
bindkey "${terminfo[kcuu1]}" up-line-or-search
bindkey "${terminfo[kcud1]}" down-line-or-search

# Source EDA env functions
source $DOTFILES/zsh/eda_envs.sh

# Add texlive to path if it exists
if [ -d /usr/local/texlive/2019/bin/x86_64-linux ]; then
    PATH=$PATH:/usr/local/texlive/2019/bin/x86_64-linux # Add Latex to path
fi
