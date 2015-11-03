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

# If this is an xterm set the title to user@host:dir
case "$TERM" in
term*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

##################################################################################
#Copied and pasted from .profile
##################################################################################

export CLICOLOR=1 
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export VISUAL=vim
export EDITOR="$VISUAL"

#alias u='sudo apt-get update ; sudo apt-get upgrade -y'
#alias ls='ls -lahT' #--color=auto'
#alias la='ls -hAXlv'
alias y='byobu'
alias x='exit'
alias ssh='ssh -A'
#alias u='sudo apt-get update ; sudo apt-get upgrade --force-yes'
#alias py2exe='wine python setup.py py2exe'
#alias lx='pdflatex'
#alias open='gnome-open'
#alias lxx='pdflatex -halt-on-error *.tex && open *.pdf'
#alias vagr='ssh vagrant@192.168.0.230'
#alias pro='ssh 192.168.101.15'
# set PATH so it includes user's private bin if it exists
#if [ -d "$HOME/bin" ] ; then
#    PATH="$HOME/bin:$PATH"
#fi

	# PATH="$PATH:/home/matt/android-sdk-linux/tools:/home/matt/android-sdk-linux"
	# Path="$PATH:/home/matt/projects"
    Path="$PATH:/home/mcarlson/projects/androidapps/adt-bundle-linux-x86_64-20131030/eclipse"

fortune -s | cowsay -n -f moose
byobu
