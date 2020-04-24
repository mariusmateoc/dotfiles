#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous\n\n"

brew_install "Alfred" "alfred" "homebrew/cask" "cask"
brew_install "Android File Transfer" "android-file-transfer" "homebrew/cask" "cask"
brew_install "AppCleaner" "appcleaner" "homebrew/cask" "cask"
brew_install "Dropbox" "dropbox" "homebrew/cask" "cask"
brew_install "Recordit" "recordit" "homebrew/cask" "cask"
brew_install "Skype" "skype" "homebrew/cask" "cask"
brew_install "Transmission" "transmission" "homebrew/cask" "cask"
brew_install "VLC" "vlc" "homebrew/cask" "cask"
