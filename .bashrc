
case $- in
    *i*) ;;
      *) return;;
esac

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

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
# if ! shopt -oq posix; then
#   if [ -f /usr/share/bash-completion/bash_completion ]; then
#     . /usr/share/bash-completion/bash_completion
#   elif [ -f /etc/bash_completion ]; then
#     . /etc/bash_completion
#   fi
# fi

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;34m\]\u@\h:\w\[\033[00m\]\$  '

export PATH=$PATH:/opt/programs/
export PATH=$PATH:/opt/programs/bash_scripts/
BROWSER=brave


stty -ixon # disable ctrl-s and ctrl-quote
shopt -s autocd

# Aliases
alias a="sudo apt-get"
alias v="nvim"
alias mkd="mkdir -pv"
alias yt="youtube-dl --add-metadata -ic"
alias yta="youtube-dl --add-metadata -xic"
alias bw="wal --vte -i ~/Pictures/wallpapers/"
alias r="ranger"
alias rss="newsboat"
alias c="conda activate"
alias btc="conda activate btc-tf && echo -ne '\033]0;Python env\007'"


# Adding color
alias ls="ls -hN --color=auto --group-directories-first"
alias grep="grep --color=auto"
alias ccat="highlight --out-format=ansi"


(cat ~/.cache/wal/sequences &)


kjvr
. /home/jim/anaconda3/etc/profile.d/conda.sh

export EDITOR=nvim

