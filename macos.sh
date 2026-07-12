#!/usr/bin/env sh

if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew update
brew upgrade

brew install --yes bat bottom dust eza fish fzf go gopls grpcurl jq neovim  protobuf qemu ripgrep rust-analyzer tig tmux k9s yq tfenv minikube helm yazi just
brew install --yes coreutils findutils gnu-sed gawk gnu-which grep gnutls  gnu-indent gnu-getopt gnu-time make bash
brew install --yes orbstack rectangle-pro stats utm vlc
brew install --yes --cask anki hiddenbar darktable codex commander-one zed transmission iterm2 font-fira-code-nerd-font firefox vivaldi libreoffice

brew cleanup
