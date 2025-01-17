fzf --fish | source

export EDITOR=nvim

# Rust env
export PATH="$HOME/.cargo/bin:$PATH"

alias nbat="bat --paging=never"
alias cat="bat --style=plain --paging=never"
alias cls=clear

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
alias gc="git commit"
alias gf="git fetch"
alias gp="git push"
alias gd="git diff"
alias gl="git pull"
alias ga="git add"
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
