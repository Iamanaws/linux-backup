
# The following lines were added by compinstall

zstyle ':completion:*' completer _list _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' max-errors 4 numeric
zstyle ':completion:*' menu select=2
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/iamanaws/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

PROMPT=$'\n%F{#61AFEF}%~%f \n$ '

### ALIASES ###
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
alias updtaur='sudo aura -Ayu'
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

fet.sh