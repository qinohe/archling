# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' completions 1
zstyle ':completion:*' glob 1
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list ''
zstyle ':completion:*' max-errors 2 numeric
zstyle ':completion:*' menu select=1
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*' substitute 1
zstyle ':completion:*' use-compctl true
zstyle :compinstall filename '/home/mark/.zshrc'


# create a zkbd compatible hash;
# to add other keys to this hash, see: man 5 terminfo
typeset -A key

key[Home]=${terminfo[khome]}

key[End]=${terminfo[kend]}
key[Insert]=${terminfo[kich1]}
key[Delete]=${terminfo[kdch1]}
key[Up]=${terminfo[kcuu1]}
key[Down]=${terminfo[kcud1]}
key[Left]=${terminfo[kcub1]}
key[Right]=${terminfo[kcuf1]}
key[PageUp]=${terminfo[kpp]}
key[PageDown]=${terminfo[knp]}

# setup key accordingly
[[ -n "${key[Home]}"    ]]  && bindkey  "${key[Home]}"    beginning-of-line
[[ -n "${key[End]}"     ]]  && bindkey  "${key[End]}"     end-of-line
[[ -n "${key[Insert]}"  ]]  && bindkey  "${key[Insert]}"  overwrite-mode
[[ -n "${key[Delete]}"  ]]  && bindkey  "${key[Delete]}"  delete-char
[[ -n "${key[Up]}"      ]]  && bindkey  "${key[Up]}"      up-line-or-history
[[ -n "${key[Down]}"    ]]  && bindkey  "${key[Down]}"    down-line-or-history
[[ -n "${key[Left]}"    ]]  && bindkey  "${key[Left]}"    backward-char
[[ -n "${key[Right]}"   ]]  && bindkey  "${key[Right]}"   forward-char

# Finally, make sure the terminal is in application mode, when zle is
# active. Only then are the values from $terminfo valid.

function zle-line-init () {
    echoti smkx
}
function zle-line-finish () {
    echoti rmkx
}

zle -N zle-line-init
zle -N zle-line-finish

autoload -U colors && colors

autoload -U promptinit
promptinit

autoload -Uz compinit
compinit

#PROMPT="%{$fg_no_bold[red]%}--%{$fg_bold[red]%}>%{$fg_no_bold[yellow]%}%T%{$fg_no_bold[red]%}@%{$fg_no_bold[yellow]%}%D %{$fg_no_bold[red]%}#%{$fg_no_bold[red]%}#%{$fg_no_bold[red]%}--%{$fg_no_bold[yellow]%}>"
PROMPT="%{$fg_no_bold[green]%}--%{$fg_bold[green]%}>%{$fg_no_bold[yellow]%}%T%{$fg_no_bold[green]%}@%{$fg_no_bold[yellow]%}%D %{$fg_no_bold[white]%}~%{$fg_no_bold[white]%}~%{$fg_no_bold[green]%}--%{$fg_no_bold[yellow]%}>"
#RPROMPT="[%{$fg_no_bold[white]%}%?%{$fg_bold[white]%}]"

#------------------------------
# Window title
#------------------------------

case $TERM in
    termite|*xterm*|rxvt|rxvt-unicode|rxvt-256color|rxvt-unicode-256color|(dt|k|E)term)
		#precmd () { print -Pn "\e]0;%D@%Y[%~]%#\a" } 
		precmd () { print -Pn "\e]0;%D@%y\a" } 
		preexec () { print -Pn "\e]0;[%n@%M][%~]%# ($1)\a" }
	;;
    screen|screen-256color)
    	precmd () { 
			print -Pn "\e]83;title \"$1\"\a" 
			print -Pn "\e]0;$TERM - (%L) [%n@%M]%# [%~]\a" 
		}
		preexec () { 
			print -Pn "\e]83;title \"$1\"\a" 
			print -Pn "\e]0;$TERM - (%L) [%n@%M]%# [%~] ($1)\a" 
		}
	;; 
esac

man() {
    env LESS_TERMCAP_mb=$(printf "\e[1;31m") \
	LESS_TERMCAP_md=$(printf "\e[1;35m") \
	LESS_TERMCAP_me=$(printf "\e[0m") \
	LESS_TERMCAP_se=$(printf "\e[0m") \
	LESS_TERMCAP_so=$(printf "\e[1;44;36m") \
	LESS_TERMCAP_ue=$(printf "\e[0m") \
	LESS_TERMCAP_us=$(printf "\e[1;32m") \
	man "$@"
}



alias ls='ls --color=auto'
alias lsi='lsinitcpio -a'
alias lsgi='lsmod | grep -i'
alias free='free -m'
alias df='df -h'

alias pact='pactree -c'
alias pacman='sudo pacman -Syu'
alias pacmans='sudo pacman -S'
alias pacmansyy='sudo pacman -Syy'
alias pacmanrsn='sudo pacman -Rsn'
alias pacmanqm='pacman -Qm'
alias pacmanqqe='pacman -Qqe > paclist.txt'
alias pacmansi='pacman -Si'
alias pacnew='sudo find / -name \*.pacnew -print'

alias ntp='sudo ntpd -qg'

alias sa='systemd-analyze'
alias sab='systemd-analyze blame'
alias sap='systemd-analyze plot > ~/plot.svg'
alias scg='systemd-cgls'													   --cgroups in tree

alias sctl='systemctl'
alias sf='systemctl --failed'
alias slu='systemctl list-units'
alias sluf='systemctl list-unit-files'
alias slut='systemctl list-units --type=target'
alias sm='sudo systemctl mask'                                           					   	           -- mask a unit file
alias scs='systemctl status'									
alias sss='sudo systemctl start'
alias sswr='systemctl show -p WantedBy -p RequiredBy'
alias ssms='sudo systemctl start ModemManager.service'
alias ssns='sudo systemctl start NeworkManager.service & sudo systemctl start NetworkManager-dispatcher.service'
alias pscg='ps xawf -eo pid,user,cgroup,args'											   -- cgroups info
alias hctl='hostnamectl'

alias jour='journalctl'
alias jourb='journalctl -b'
alias jouru='journalctl -u' 

alias sev='sudo EDITOR=vim visudo'
alias su='su -'
alias sudo='sudo'
alias eva='eval `ssh-agent`'
alias shad='ssh-add ~/.ssh/id_rsa'

alias c='clear'
alias ping='ping -c 3'
alias tx='sudo iwconfig wlan0 txpower 2'
alias ptop='sudo powertop'


# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=2500
SAVEHIST=2500
setopt appendhistory autocd extendedglob nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install
