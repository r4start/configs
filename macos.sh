#!/usr/bin/env sh

if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew update
brew upgrade

brew install --yes anki bat bottom dust eza fish fzf go gopls grpcurl jq neovim \
             openvpn protobuf qemu ripgrep rust-analyzer rustup-init \
             tig tmux k9s yq terraform minikube goose python poetry \
             helm yazi just
brew install --yes coreutils findutils gnu-sed gawk gnu-which grep gnutls  gnu-indent gnu-getopt gnu-time make bash
brew install --yes qbittorrent orbstack rectangle-pro stats utm vlc macfuse sublime-text

brew install --yes --cask hiddenbar --no-quarantine
brew install --yes --cask darktable codex commander-one zed

brew cleanup
