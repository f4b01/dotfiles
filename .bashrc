#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

eval "$(fzf --bash)"
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'
    

#Imposta neovim come editor di DEFAULT
export EDITOR="nvim"
export VISUAL="nvim" 


export XDG_CONFIG_HOME="/home/$USER/.config/"    # Imposta la directory dei file di configurazione


shopt -s autocd     # Ti permette di entrare nella directory semplicemente scrivendone il nome

stty -ixon     # disabilita ctrl-s e ctrl-q

[[ -s /home/env/.autojump/etc/profile.d/autojump.sh ]] && source /home/env/.autojump/etc/profile.d/autojump.sh   #autojump


eval $(ssh-agent) > /dev/null    # Avvia Agente ssh


#Cheatsheet comandi

RED='\033[0;31m'
NC='\033[0m' #Nessun colore

echo "ch = cheatsheet comandi"
alias ch='printf "
*************************************************************************************  
*                                                                                   *
*   ${RED}j${NC} per navigare nel sistema in modo veloce,                                      *
*   ${RED}nvs${NC} per cercare un file ed entrarci dentro con neovim,                          *
*   ${RED}n${NC} per eseguire neovim,                                                          *
*   ${RED}config${NC} come comando di git specifico per aggiornare i dotfiles,                 *
*   ${RED}hst${NC} per cercare all interno della history un comando,                           *
*   ${RED}..${NC}  per andare una directory indietro,                                          *
*   ${RED}..2${NC} per andare due directory indietro,                                          *
*   ${RED}..3${NC} per andare tre directory indietro,                                          *
*   ${RED}..4${NC} per andare quattro directory indietro.                                      *      
*                                                                                   *
*************************************************************************************\n"'


# bash prompt personalizzato
PS1="\[\e[31m\][\[\e[m\]\[\e[34m\]\h\[\e[m\]\[\e[34m\]@\[\e[m\]\[\e[34m\]\u\[\e[m\]\[\e[31m\]]\[\e[m\]\[\e[31m\]-\[\e[m\]\[\e[31m\][\[\e[m\]\[\e[32m\]\w\[\e[m\]\[\e[31m\]]\[\e[m\]\\$ "

#I miei alias
alias v='nvim'
alias nvs='nvim $(fzf --algo=v2 --border)'
alias hst='history | fzf'
# alias hst='history | grep'  # nel caso in cui non si avesse fzf installato
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ls='ls -ah --color=auto --group-directories-first  -I . -I .. '
alias grep='grep --color=auto'
alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'

# Created by `pipx` on 2025-06-27 17:02:49
export PATH="$PATH:/home/fabiano/.local/bin"
