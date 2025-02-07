#!/usr/bin/env sh

if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew update
brew upgrade

brew install bat bottom dust eza fish fzf go gopls grpcurl jq mosh neovim \
             openvpn protobuf ripgrep rust-analyzer rustup-init \
             tig tmux k9s yq virtctl terraform kind goose python poetry \
             helm yazi

brew cleanup
