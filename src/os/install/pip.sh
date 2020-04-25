#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_pip_package() {

    execute \
        ". $HOME/.bash.local \
            && pip install --quiet $2" \
        "$1"

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple "\n  Install Pip and Global Packages with Pip\n\n"

    install_pip_package "pip (update)" "--upgrade pip"
    printf "\n"
    install_pip_package "Pygments" "pygments"

}

main
