#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous CLI Tools\n\n"

brew_install "Asciinema" "asciinema"
brew_install "Bat" "bat"
brew_install "Bat Extras" "bat-extras"
brew_install "Btop" "btop"
brew_install "Fd" "fd"
brew_install "Fzf" "fzf"
brew_install "Grep" "grep"
brew_install "Rename" "rename"
brew_install "Ripgrep" "ripgrep"
brew_install "Rsync" "rsync"
brew_install "ShellCheck" "shellcheck"
brew_install "Tree" "tree"
brew_install "Unar" "unar"
brew_install "Wget" "wget"
