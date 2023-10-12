#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\n\[\033[01;34m\]\w\[\033[00m\] \n\$ '

# ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"

### ALIASES ###
alias vim='nvim'
alias p='PATH=$PATH:$(pwd)'
alias ls='ls -F --color=auto --show-control-chars'
alias l='ls -oshA'
alias sl='l'
alias dir='l'
alias ..='cd ..'
alias ...='cd ../..'
alias cls='clear'
alias cl='clear'
alias t='touch'
alias md='mkdir'
alias ~='cd'
alias w='cat << EOF'
alias hd='head'
alias tl='tail'

## Colorize the grep command output for ease use
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias open='xdg-open'
alias o='xdg-open'

alias py='python3'

# Aliases for software managment
alias pacman='sudo pacman --color auto'
alias mirrors='sudo reflector -a 2 -c us -f 10 -p https --connection-timeout 2 --download-timeout 2 --sort rate --score 15 --save /etc/pacman.d/mirrorlist'
alias update='mirrors && sudo pacman -Syyu'

alias updt='sudo pacman -Syu'
alias aurup='sudo aura -Ayu'
alias pac='sudo pacman -S'
alias aur='sudo aura -A'
    ## Search
alias s='pacman -Ss'
alias sa='aura -As'

# Shutdown and Reboot
alias ssn='sudo shutdown now'
alias sr='sudo reboot'

alias xd='ls /usr/share/xsessions'

# Deny overwriting
set -o noclobber

if [ "$TERM" = "linux" ]; then
    echo -en "\e]P05A6374" #black
    echo -en "\e]P8282C34" #darkgrey
    echo -en "\e]P1E06C75" #darkred
    echo -en "\e]P9E06C75" #red
    echo -en "\e]P298C379" #darkgreen
    echo -en "\e]PA98C379" #green
    echo -en "\e]P3E5C07B" #brown
    echo -en "\e]PBE5C07B" #yellow
    echo -en "\e]P461AFEF" #darkblue
    echo -en "\e]PC61AFEF" #blue
    echo -en "\e]P5C678DD" #darkmagenta
    echo -en "\e]PDC678DD" #magenta
    echo -en "\e]P656B6C2" #darkcyan
    echo -en "\e]PE56B6C2" #cyan
    echo -en "\e]P7DCDFE4" #lightgrey
    echo -en "\e]PFDCDFE4" #white
    clear #for background artifacting
fi

fet.sh
