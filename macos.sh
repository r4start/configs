#!/usr/bin/env sh

if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew update
brew upgrade

brew install bat bottom dust eza go gopls grpcurl jq mosh neovim protobuf qemu ripgrep rust-analyzer rustup-init tig tmux
brew install qbittorrent orbstack rectangle stats utm vlc
brew install --cask alacritty --no-quarantine

brew cleanup

# Install oh-my-zsh