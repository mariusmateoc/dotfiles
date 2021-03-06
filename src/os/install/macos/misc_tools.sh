#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous CLI Tools\n\n"

brew_install "Grep" "grep"
brew_install "HTOP" "htop"
brew_install "Rename" "rename"
brew_install "Rsync" "rsync"
brew_install "ShellCheck" "shellcheck"
brew_install "Tree" "tree"
brew_install "Unrar" "unrar"
brew_install "Vagrant" "vagrant" "--cask"
brew_install "Wget" "wget"
