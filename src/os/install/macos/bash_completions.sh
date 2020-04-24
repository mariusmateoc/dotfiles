#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Bash Completions\n\n"

brew_install "Brew Cask Bash Completion" "brew-cask-completion"
brew_install "Vagrant Completion" "vagrant-completion"
brew_install "Yarn Completion" "yarn-completion"
