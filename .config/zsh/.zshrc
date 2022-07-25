#!/bin/zsh
# Most of the configuration comes from: https://github.com/LukeSmithxyz/voidrice/blob/master/.config/zsh/.zshrc#L5
# Default programs
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"

# General aliases
alias ll="ls -la"

# Git aliases
alias gadd="git add"
alias gc="git commit -m"

### zsh configuration
# Configure history
HISTSIZE=1000
SAVEHIST=1000
HISTFILE="$HOME/.cache/zsh/history"

# Color the username and hostname
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Set vi mode in the terminal
bindkey -v
# Function to change between modes (visually)
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
export KEYTIMEOUT=1
zle -N zle-keymap-select
echo -ne '\e[5 q' # start as insert mode

