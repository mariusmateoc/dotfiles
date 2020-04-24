#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous Tools\n\n"

brew_install "Dash" "dash" "homebrew/cask" "cask"
brew_install "iTerm" "iterm2" "homebrew/cask" "cask"
brew_install "Sequel Pro" "sequel-pro" "homebrew/cask" "cask"
brew_install "ShellCheck" "shellcheck"
brew_install "Tree" "tree"
brew_install "Vagrant" "vagrant" "homebrew/cask" "cask"
brew_install "Virtualbox" "virtualbox" "homebrew/cask" "cask"
brew_install "Visual Studio Code" "visual-studio-code" "homebrew/cask" "cask"
brew_install "Visual Studio Code Insiders" "visual-studio-code-insiders" "homebrew/cask" "cask"

if [ -d "$HOME/.nvm" ]; then
    brew_install "Yarn" "yarn"
fi

brew_install "z" "z"
