# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

#############################################################################
# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

#if [ -n "$force_color_prompt" ]; then
#    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
#	color_prompt=yes
#    else
#	color_prompt=
#    fi
#fi


# If this is an xterm set the title to user@host:dir
case "$TERM" in
term*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
#if [ -x /usr/bin/dircolors ]; then
#    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    #alias ls='ls -l --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

#    alias grep='grep --color=auto'
#    alias fgrep='fgrep --color=auto'
#    alias egrep='egrep --color=auto'
#fi

# some more ls aliases
#alias ll='ls -alF'
#alias la='ls -lA'
#alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
#if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
#    . /etc/bash_completion
#fi

#export CLICOLOR=1 
#export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

export VISUAL=vim
export EDITOR="$VISUAL"

#export PROMPT="%n@%M:%~$ "
#export PS1="\u@\H:\W$ "

#
alias htop='htop -u $USER'
alias ls='ls -lah --color=auto'
alias la='ls -hAXlv'
alias y='byobu'
alias x='exit'
alias ssh='ssh -A'
#alias u='sudo apt-get update ; sudo apt-get upgrade -y'
alias py2exe='wine python setup.py py2exe'
#alias lx='pdflatex'
#alias open='gnome-open'
#alias lxx='pdflatex -halt-on-error *.tex && open *.pdf'
##alias vagr='ssh vagrant@192.168.0.230'
##alias vag='ssh vagrant@192.168.0.230 -p 8022'
#alias pro='ssh 192.168.101.15'
# set PATH so it includes user's private bin if it exists
#if [ -d "$HOME/bin" ] ; then
#    PATH="$HOME/bin:$PATH"
#fi

	# PATH="$PATH:/home/matt/android-sdk-linux/tools:/home/matt/android-sdk-linux"
	# Path="$PATH:/home/matt/projects"
 #   Path="$PATH:/home/mcarlson/projects/androidapps/adt-bundle-linux-x86_64-20131030/eclipse"

#fortune -s | cowsay -n -f tux.cow
