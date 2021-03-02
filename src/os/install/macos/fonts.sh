#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Fonts\n\n"

brew_install "Bitstream Vera" "font-bitstream-vera" "--cask"
brew_install "Droid Sans Mono Powerline" "font-droid-sans-mono-for-powerline" "--cask"

brew_install "Fira Code" "font-fira-code" "--cask"
brew_install "Fira Mono" "font-fira-mono" "--cask"
brew_install "Fira Sans" "font-fira-sans" "--cask"

brew_install "FontAwesome" "font-fontawesome" "--cask"

brew_install "Lato" "font-lato" "--cask"

brew_install "Montserrat" "font-montserrat" "--cask"

brew_install "Noto Serif" "font-noto-serif" "--cask"
brew_install "Noto Sans" "font-noto-sans" "--cask"
brew_install "Noto Mono" "font-noto-mono" "--cask"

brew_install "Open Sans" "font-open-sans" "--cask"

brew_install "PT Serif" "font-pt-serif" "--cask"
brew_install "PT Sans" "font-pt-sans" "--cask"
brew_install "PT Mono" "font-pt-mono" "--cask"

brew_install "Raleway" "font-raleway" "--cask"

brew_install "Roboto" "font-roboto" "--cask"
brew_install "Roboto Mono" "font-roboto-mono" "--cask"
brew_install "Roboto Slab" "font-roboto-slab" "--cask"

brew_install "Source Code Pro" "font-source-code-pro" "--cask"
brew_install "Source Serif Pro" "font-source-serif-pro" "--cask"
brew_install "Source Sans Pro" "font-source-sans-pro" "--cask"

brew_install "Ubuntu" "font-ubuntu" "--cask"
