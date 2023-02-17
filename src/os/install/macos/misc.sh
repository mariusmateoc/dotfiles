#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous GUI Tools\n\n"

brew_install "Alfred" "alfred" "--cask"
brew_install "Android File Transfer" "android-file-transfer" "--cask"
brew_install "AppCleaner" "appcleaner" "--cask"
brew_install "Dash" "dash" "--cask"
brew_install "Dropbox" "dropbox" "--cask"
brew_install "iTerm" "iterm2" "--cask"
brew_install "Rectangle" "rectangle" "--cask"
brew_install "Table Plus" "tableplus" "--cask"
brew_install "Skype" "skype" "--cask"
brew_install "Visual Studio Code" "visual-studio-code" "--cask"
brew_install "Visual Studio Code Insiders" "visual-studio-code-insiders" "--cask"
brew_install "VLC" "vlc" "--cask"
