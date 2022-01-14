export NAME="Liam Egan"
export EMAIL="liam@liamegan.com"
export EDITOR="vim"

export PATH="$HOME/bin:/usr/local/bin:/usr/bin"

export PS1="[\u@\h] \w\$(git_status_indicator) > "
export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"

alias ls="ls --color=auto --classify --human-readable"
alias tree="tree -C -F --dirsfirst -I '__pycache__|node_modules'"

source $HOME/.asdf/asdf.sh

if [ "$(tty)" = "/dev/tty1" ]; then
	startx
fi

git_status_indicator() {
	branch=$(git branch 2>/dev/null | grep "^*" | sed "s/* \(.*\)/\1/")
	unstaged_changes=$(git diff HEAD 2>/dev/null)
	untracked_files=$(git ls-files --others --exclude-standard 2>/dev/null)
	changes=""

	if [ -z "$branch" ]; then
		printf ""
		exit 0
	fi

	if [ -n "$unstaged_changes" -o -n "$untracked_files" ]; then
		changes="*"
	fi

	printf "(%s%s)" "$branch" "$changes"
}
