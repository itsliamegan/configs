export NAME="Liam Egan"
export EMAIL="liam@liamegan.com"
export EDITOR="vim"

export PATH="$HOME/bin:/usr/local/bin:/usr/bin"

export PS1="[\u@\h] \w > "
export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"

alias ls="ls --color=auto --classify --human-readable"
alias tree="tree -C -F --dirsfirst -I '__pycache__|node_modules'"

source $HOME/.asdf/asdf.sh
