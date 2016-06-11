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
export PROMPT="%n@%M:%~$ "
#export PROMPT="\[\e[1;34m\]\u\[\e[0;39m\]@\[\e[1;32m\]\h\[\e[0;39m\]:\[\e[1;33m\]\w\[\e[0;39m\]$(__git_ps1_yelp " \[\e[1;36m\]()\[\e[0;39m\] ")\$ "
alias ls='ls -lah --color=auto'
alias la='ls -hAXlv'
alias y='byobu'
alias x='exit'
alias ssh='ssh -A'

export VISUAL=vim
export EDITOR="$VISUAL"
