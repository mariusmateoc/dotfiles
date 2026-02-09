#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Bash Completions\n\n"

brew_install "Brew Cask Bash Completion" "brew-cask-completion"
brew_install "WP CLI Completion" "wp-cli-completion"
brew_install "Python (pip) Completion" "pip-completion"
brew_install "Usage" "usage"
