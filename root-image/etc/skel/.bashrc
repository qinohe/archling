#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

##PS1='[\u@\h \W]\$ '
PS1='\033[1;33m[[\033[1;34mLocal:\033[0;32m\A \033[1;34mDir:\033[0;38m\w\033[1;33m]]\n\$ \[\033[0m\]'

##TITLEBAR='\[\e]0;\T@\u\a\]'

##PS1="${TITLEBAR}\T@\[\033[1;39m\]\u\[\033[1;32m\]:\W:) "



if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

[ -n "$XTERM_VERSION" ] && transset-df -a >/dev/null

alias ls='ls --color=auto'
alias lsi='lsinitcpio'
alias free='free -m'
alias df='df -h'

alias pacman='sudo pacman -Syu'
alias pacmans='sudo pacman -S'
alias pacmanrs='sudo pacman -Rs'

alias reboot='sudo reboot'
alias poweroff='sudo poweroff'
alias ntp='ntpd -qg'

alias sab='systemd-analyze blame'
alias sa='systemd-analyze'
alias sf='systemctl --failed'

alias sev='sudo EDITOR=vim visudo'
alias su='su -'
alias sudo='sudo'

alias c='clear'
alias ping='ping -c 3'

