#!/bin/bash

DOTFILES_DIR=~/dotfiles

create_symlink() {
    SRC="$1"
    DEST="$2"

    if [ -e "$DEST" ]; then
        rm -rf "$DEST"
    fi

    ln -s "$SRC" "$DEST"
}

# create_symlink "$DOTFILES_DIR/zsh/.zshrc" ~/.zshrc
create_symlink "$DOTFILES_DIR/i3" ~/.config/i3
create_symlink "$DOTFILES_DIR/nvim" ~/.config/nvim
create_symlink "$DOTFILES_DIR/tmux" ~/.config/tmux
create_symlink "$DOTFILES_DIR/wezterm" ~/.config/wezterm
create_symlink "$DOTFILES_DIR/git/.gitconfig" ~/.gitconfig
