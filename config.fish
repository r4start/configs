export EDITOR=nvim

alias nbat="bat --paging=never"
alias cat="bat --style=plain --paging=never"
alias cls=clear
alias python=python3
alias unset="set -e"

# Kubernetes shorthands
alias k=kubectl
alias mk=minikube
alias k9sr="k9s --readonly"

alias nv=nvim
alias yy=paru

# Git shorthands
alias gst="git status"
alias gcl="git clone"
alias gbr="git branch"
alias gco="git checkout"
alias gsc="git switch -c"
alias gc="git commit"
alias gf="git fetch"
alias gp="git push"
alias gd="git diff"
alias gl="git pull"
alias ga="git add"
alias gs="git switch"
alias g="git"

# Terraform
alias tf="terraform"
alias tfa="terraform apply"
alias tfp="terraform plan"
alias tfi="terraform init"

# Brew
alias bu="brew update"
alias bup="brew upgrade"
alias bubo="brew update && brew outdated"
alias bubu="bubo && bup"

set -g fish_greeting

# Rust env
export PATH="$HOME/.cargo/bin:$PATH"

# Go env.
export GOPATH="$HOME/Projects/go"
export GOMAXPROCS="16"
export PATH="$GOROOT/bin:$GOPATH/bin:$PATH"

if test (uname) = "Darwin"
    export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
    # GNU utils
    # Add Homebrew's GNU core utilities to the PATH
    export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

    # Add the individual GNU utilities to the PATH
    export PATH="$(brew --prefix findutils)/libexec/gnubin:$PATH"
    export PATH="$(brew --prefix gnu-sed)/libexec/gnubin:$PATH"
    export PATH="$(brew --prefix gawk)/bin:$PATH"
    export PATH="$(brew --prefix gnu-which)/libexec/gnubin:$PATH"
    export PATH="$(brew --prefix grep)/libexec/gnubin:$PATH"
    export PATH="$(brew --prefix gnutls)/bin:$PATH"
    export PATH="$(brew --prefix gnu-indent)/libexec/gnubin:$PATH"
    export PATH="$(brew --prefix gnu-getopt)/bin:$PATH"
    export PATH="$(brew --prefix gnu-time)/libexec/gnubin:$PATH"
    export PATH="$(brew --prefix make)/libexec/gnubin:$PATH"
    export PATH="$(brew --prefix bash)/bin:$PATH"

    alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
else if command -v lsb_release >/dev/null; and test (lsb_release -is) = "Ubuntu"
    export PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH"
end

fzf --fish | source
