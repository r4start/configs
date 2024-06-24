# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bureau"

HIST_STAMPS="yyyy-mm-dd"

plugins=(git sublime brew kubectl helm terraform golang docker python minikube)

# User configuration

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

export EDITOR=nvim

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

alias ls="eza"
alias hexstr='noglob dump_hex_str'
dump_hex_str() {
  hexdump -ve '1/1 "%.2x"' $*
}

alias nbat="bat --paging=never"
alias cat="bat --style=plain --paging=never"
alias python=python3
alias cls=clear
alias nv=nvim

# Rust env.
export PATH="$HOME/.cargo/bin:$PATH"

#Go env.
export GOROOT=/usr/local/go
export GOPATH="$HOME/Projects/go"
export GOMAXPROCS="16"
export PATH="$GOROOT/bin:$GOPATH/bin:$PATH"
