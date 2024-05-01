#!/usr/bin/env bash

config_dir="${HOME}/.config"

target_dotfiles_dir=".dotfiles"

cd ${HOME}/$target_dotfiles_dir

# files and directories to link in .config
file_list=(
    "bat"
    "lf"
    "nvim"
    "wezterm"
    "ranger"
    "alacritty"
    "ripgreprc"
    "tmux"
)

check_and_create_directory() {
    local dir_path="$1"
    if [ ! -d "$dir_path" ]; then
        mkdir -p "$dir_path"
        echo "Directory $dir_path created"
    else
        echo "Directory $dir_path already exists"
    fi
}

check_and_create_symlink() {
    local source_file="$1"
    local symlink_path="$2"
    if [ -L "$symlink_path" ]; then
        echo "Symlink $symlink_path already exists"
    elif [ -e "$symlink_path" ]; then
        echo "A file already exists at $symlink_path, please remove it first."
    else
        ln -s "$source_file" "$symlink_path"
        echo "Symlink $symlink_path created"
    fi
}

setupEmacs() {
    check_and_create_directory "${HOME}/.emacs.d"
    check_and_create_symlink "../${target_dotfiles_dir}/emacs.d/init.el" "${HOME}/.emacs.d/init.el"
    check_and_create_symlink "${HOME}/${target_dotfiles_dir}/emacs.d/loader.org" "${HOME}/.emacs.d/loader.org"
}

setupRestOfDotConfig() {
    # link files in .config
    for file in "${file_list[@]}"
    do
        check_and_create_symlink "../${target_dotfiles_dir}/config/$file" "${config_dir}/$(basename $file)"
    done
}

# setupTmux() {
#     check_and_create_symlink "${target_dotfiles_dir}/tmux.conf" "${HOME}/.tmux.conf"
# }

setupScreen() {
    check_and_create_symlink "${target_dotfiles_dir}/screenrc" "${HOME}/.screenrc"
}

setupZsh() {
    check_and_create_symlink "${target_dotfiles_dir}/zshrc" "${HOME}/.zshrc"
}

setupIdeavimrc() {
    check_and_create_symlink "${target_dotfiles_dir}/ideavimrc" "${HOME}/.ideavimrc"
}

main() {
    check_and_create_directory "$config_dir"
    setupEmacs
    setupRestOfDotConfig
    # setupTmux
    setupScreen
    setupIdeavimrc
}

main

