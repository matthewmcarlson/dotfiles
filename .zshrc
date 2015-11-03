# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd beep extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/mcarlson/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

alias ls='ls -lahT' # --color=auto'
alias la='ls -hAXlv'
alias y='byobu'
alias x='exit'

export VISUAL=vim
export EDITOR="$VISUAL"
