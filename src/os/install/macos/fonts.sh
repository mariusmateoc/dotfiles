#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Fonts\n\n"

brew_install "Bitstream Vera" "font-bitstream-vera" "homebrew/cask-fonts" "cask"
brew_install "Droid Sans Mono Powerline" "font-droid-sans-mono-for-powerline" "homebrew/cask-fonts" "cask"

brew_install "Fira Code" "font-fira-code" "homebrew/cask-fonts" "cask"
brew_install "Fira Mono" "font-fira-mono" "homebrew/cask-fonts" "cask"
brew_install "Fira Sans" "font-fira-sans" "homebrew/cask-fonts" "cask"

brew_install "FontAwesome" "font-fontawesome" "homebrew/cask-fonts" "cask"

brew_install "Lato" "font-lato" "homebrew/cask-fonts" "cask"

brew_install "Montserrat" "font-montserrat" "homebrew/cask-fonts" "cask"

brew_install "Noto Serif" "font-noto-serif" "homebrew/cask-fonts" "cask"
brew_install "Noto Sans" "font-noto-sans" "homebrew/cask-fonts" "cask"
brew_install "Noto Mono" "font-noto-mono" "homebrew/cask-fonts" "cask"

brew_install "Open Sans" "font-open-sans" "homebrew/cask-fonts" "cask"

brew_install "PT Serif" "font-pt-serif" "homebrew/cask-fonts" "cask"
brew_install "PT Sans" "font-pt-sans" "homebrew/cask-fonts" "cask"
brew_install "PT Mono" "font-pt-mono" "homebrew/cask-fonts" "cask"

brew_install "Raleway" "font-raleway" "homebrew/cask-fonts" "cask"

brew_install "Roboto" "font-roboto" "homebrew/cask-fonts" "cask"
brew_install "Roboto Mono" "font-roboto-mono" "homebrew/cask-fonts" "cask"
brew_install "Roboto Slab" "font-roboto-slab" "homebrew/cask-fonts" "cask"

brew_install "Source Code Pro" "font-source-code-pro" "homebrew/cask-fonts" "cask"
brew_install "Source Serif Pro" "font-source-serif-pro" "homebrew/cask-fonts" "cask"
brew_install "Source Sans Pro" "font-source-sans-pro" "homebrew/cask-fonts" "cask"

brew_install "Ubuntu" "font-ubuntu" "homebrew/cask-fonts" "cask"