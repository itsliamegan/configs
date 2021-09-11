export NAME="Liam Egan"
export EMAIL="liam@liamegan.com"

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin"

export PS1="[\u@\h] \w > "

alias ls="ls --color=auto --classify"
alias tree="tree -C -F --dirsfirst -I '__pycache__'"

download-youtube-video() {
	youtube-dl $1 --output $2.mp4 --format "bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4"
}

download-youtube-audio() {
	youtube-dl $1 --output $2.mp4 --extract-audio --audio-format mp3
}

source $HOME/.asdf/asdf.sh
