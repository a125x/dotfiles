#plugins=(zsh-z zsh-autosuggestions web-search)
# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' max-errors 0 not-numeric
zstyle ':completion:*' completer _complete _approximate
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z} m:=_ m:=- m:=.'
zstyle ':completion:*' file-sort modification reverse
zstyle ':completion:*' special-dirs false
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.
bindkey -M menuselect '^[[Z' reverse-menu-complete # shift tab 

autoload -U colors && colors	# Load colors
export EDITOR='vim'
set -o emacs
setopt PROMPT_SUBST

source ~/.config/zsh/plugins/git/.git-prompt.sh
# git prompt options
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_STATESEPARATOR=' '
GIT_PS1_HIDE_IF_PWD_IGNORED=true
GIT_PS1_COMPRESSSPARSESTATE=true

precmd () { __git_ps1 %F{yellow}"%1d"%f %F{magenta}"%s → "%f }

#PS1="%{$fg[yellow]%}%1d → %{$reset_color%} %c$(__git_ps1 " (%s)")"
setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.
setopt interactive_comments

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history"

# never beep
setopt NO_BEEP

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


source ~/.docker/init-zsh.sh || true # Added by Docker Desktop
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
