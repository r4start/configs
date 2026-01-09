#!/usr/bin/env sh

if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew update
brew upgrade

brew install bat bottom dust eza fish fzf go gopls grpcurl jq mosh neovim \
             openvpn protobuf qemu ripgrep rust-analyzer rustup-init \
             tig tmux k9s yq virtctl terraform kind goose python poetry \
             helm karabiner-elements yazi
brew install qbittorrent orbstack rectangle stats utm vlc logseq macfuse sublime-text

brew install --cask alacritty --no-quarantine
brew install chromium --no-quarantine
brew install --cask hiddenbar --no-quarantine

brew cleanup
