#!/usr/bin/env sh

OS_NAME=$(uname)

if [ "$OS_NAME" == "Darwin" ]; then
    source macos.sh
elif [ "$OS_NAME" == "Linux" ]; then
    source linux.sh
fi

if [ ! -d "~/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Copy zshrc

# Copy tmux conf

# Install FiraCode fonts: Nerd + Nerd Mono

# Install alacritty themes

# Copy alacritty config