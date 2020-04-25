#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   GPG\n\n"

# https://dev.to/wes/how2-using-gpg-on-macos-without-gpgtools-428f

brew_install "GPG" "gpg"
brew_install "Pinentry" "pinentry-mac"
