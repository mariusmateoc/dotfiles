#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_package() {

    execute \
        ". $HOME/.bash.local \
            && volta install $2" \
        "$1"

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple "\n   Node.js and Global Packages\n\n"

    install_package "Node.js (Latest LTS)" "node"
    install_package "Yarn" "yarn"

}

main
