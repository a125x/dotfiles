#plugins=(git zsh-z zsh-autosuggestions zsh-syntax-highlighting web-search)
autoload -U compinit && compinit
autoload -U colors && colors	# Load colors
export EDITOR='vim'
set -o emacs
PS1="%B%{$fg[yellow]%}%1d % → $reset_color%b"
setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.
setopt interactive_comments

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/a125x/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/a125x/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/a125x/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/a125x/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

#brew
export PATH=/opt/homebrew/bin:$PATH
export PATH=/Users/a125x/.local/bin:$PATH
export PATH="/opt/homebrew/sbin:$PATH"
#jupyter
export PATH=/Users/a125x/Library/Jupyter/bin:$PATH

alias myip="curl http://ipecho.net/plain; echo"
alias ..="cd .."
alias ...='cd ../..'
alias c='clear'
alias v='vim'
alias m='mvim'
alias p='python'
alias safari='open -a Safari'
alias eun='euporie-notebook'
alias jn='jupyter notebook'
alias chrome='open -a Google\ Chrome'
alias ssd='smartctl -a disk0'
alias brewclang='/opt/homebrew/opt/llvm/bin/clang++'
alias comp='tar -czvf'
alias uncomp='tar -xvf'
alias cde='codium -r'
alias yab='yabai --start-service'
alias nyab='yabai --stop-service'
alias ls='exa'
tre() { command tre "$@" -e && source "/tmp/tre_aliases_$USER" 2>/dev/null; }

# Inspired by https://github.com/m-ou-se/config/blob/master/shellrc.

# Set a color in the terminal palette.
# \param 1 The index in the pallete.
# \param 2 is a hexadecimal RGB color code.
function set_color {
	if [ "$TERM" = "linux" ]; then
		[ $1 -lt 16 ] && printf $'\e]P%X%s' "$1" "$2"
	else
		printf $'\e]4;%s;#%s\e\\' "$1" "$2"
	fi
}

# Set terminal colors.
set_color  0 262626 # black
set_color  1 cc241d # red
set_color  2 98971a # green
set_color  3 d79921 # yellow
set_color  4 458588 # blue
set_color  5 b16286 # magenta
set_color  6 689d6a # cyan
set_color  7 928374 # light grey
set_color  8 282828 # dark grey
set_color  9 fb4934 # bright red
set_color 10 b8bb26 # bright green
set_color 11 fabd2f # bright yellow
set_color 12 83a598 # bright blue
set_color 13 d3869b # bright magenta
set_color 14 8ec07c # bright cyan
set_color 15 F9D9B4 # white
# Set colors for 256
set_color 17 076678 # dark blue
set_color 22 79740e # dark green
set_color 52 9d0006 # dark red
set_color 53 8f3f71 # dark magenta


source /Users/a125x/.docker/init-zsh.sh || true # Added by Docker Desktop

source /Users/a125x/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
