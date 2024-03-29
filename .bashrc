# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Variables
export EDITOR='nvim'

#Aliases
alias ls='ls --color=auto'
alias pw='nvim /mnt/SSD/thewords.txt'
alias v='nvim'
alias se='sudoedit'
alias shutdown='poweroff'
alias install='sudo pacman -S || paru -S --skipreview'
alias update='sudo pacman -Syyu && paru -Syua --skipreview --nodevel; sudo pacman -Rsn $(paru -Qdtq); paru -cc'
alias update-git='sudo pacman -Syyu && paru -Syua --skipreview; sudo pacman -Rsn $(paru -Qdtq); paru -cc'
alias remove='sudo pacman -Rsn $(paru -Qdtq)'
alias clean='sudo pacman -Rsn $(paru -Qdtq); paru -cc'
alias btctl='bluetoothctl'
alias swaptgl='sudo swapoff -a; sudo swapon -a'

#Prompt
PS1='\[\e[37m\]\[\e[0m\]\[\e[47;1m\]\[\e[30m\]\w  \[\e[0m\]\[\e[37m\]\[\e[0m\] '
# PS1='\[\e[37;1m\]\w   \[\e[0m\]'

#Startup
r=$((RANDOM%15))
  command[0]='catnip'
  command[1]='catnip'
  command[2]='catnip'
  command[3]='catnip'
  command[4]='catnip'
  command[5]='sleep .1; cbonsai -L 25 -p'
  command[6]='sleep .1; cbonsai -L 30 -p'
  command[7]='sleep .1; cbonsai -L 35 -p'
  command[8]='sleep .1; cbonsai -L 40 -p'
  command[9]='sleep .1; cbonsai -L 45 -p'
  command[10]='colorscript -e crunchbang'
  command[11]='colorscript -e faces'
  command[12]='colorscript -e rails'
  command[13]='colorscript -e square'
  command[14]='colorscript -e zwaves'
eval ${command[$r]}
unset command r
