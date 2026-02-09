#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Fonts\n\n"

brew_install "FontAwesome" "font-fontawesome" "--cask"
brew_install "JetBrains Mono Nerd Font" "font-jetbrains-mono-nerd-font" "--cask"
brew_install "ZedMono Nerd Font" "font-zed-mono-nerd-font" "--cask"
brew_install "Source Code Pro" "font-source-code-pro" "--cask"

brew_install "Roboto" "font-roboto" "--cask"
brew_install "Lato" "font-lato" "--cask"
brew_install "Montserrat" "font-montserrat" "--cask"
brew_install "Noto Sans" "font-noto-sans" "--cask"
brew_install "DM Sans" "font-dm-sans" "--cask"
brew_install "Open Sans" "font-open-sans" "--cask"
brew_install "PT Sans" "font-pt-sans" "--cask"
brew_install "Raleway" "font-raleway" "--cask"
brew_install "Ubuntu" "font-ubuntu" "--cask"
brew_install "Fira Sans" "font-fira-sans" "--cask"
brew_install "Bitstream Vera" "font-bitstream-vera" "--cask"
