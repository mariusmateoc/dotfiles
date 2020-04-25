#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous GUI Tools\n\n"

brew_install "Alfred" "alfred" "homebrew/cask" "cask"
brew_install "Android File Transfer" "android-file-transfer" "homebrew/cask" "cask"
brew_install "AppCleaner" "appcleaner" "homebrew/cask" "cask"
brew_install "Dash" "dash" "homebrew/cask" "cask"
brew_install "Dropbox" "dropbox" "homebrew/cask" "cask"
brew_install "iTerm" "iterm2" "homebrew/cask" "cask"
brew_install "Recordit" "recordit" "homebrew/cask" "cask"
brew_install "Sequel Pro" "sequel-pro" "homebrew/cask" "cask"
brew_install "Skype" "skype" "homebrew/cask" "cask"
brew_install "Transmission" "transmission" "homebrew/cask" "cask"
brew_install "Visual Studio Code" "visual-studio-code" "homebrew/cask" "cask"
brew_install "Visual Studio Code Insiders" "visual-studio-code-insiders" "homebrew/cask" "cask"
brew_install "VLC" "vlc" "homebrew/cask" "cask"
