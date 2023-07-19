# Path to your oh-my-zsh installation.
export ZSH="$HOME/.config/zsh/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

zstyle ':omz:update' frequency 13

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(git zsh-z zsh-autosuggestions zsh-syntax-highlighting web-search)

source $ZSH/oh-my-zsh.sh
autoload -U compinit && compinit

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='mvim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#PROMPT='%n@mac-air in %~ ~ %%'
#PS1='%n@%m %/ %% '

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
eval $(thefuck --alias)
#tre() { command tre "$@" -e && source "/tmp/tre_aliases_$USER" 2>/dev/null; }
#!/bin/zsh

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
