#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install() {
    execute \
        "curl https://mise.run | bash -s -- --skip-setup" \
        "Install Mise"
}

install_tools() {

    execute "mise use -g node@lts" \
        "(mise) Install Node.js LTS"

    execute "mise use -g uv" \
        "(mise) Install UV Python package and project manager"

    execute "mise use -g pnpm" \
        "(mise) Install pnpm"

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple "\n   Mise\n\n"

    install
    install_tools

    reload_local_shell_configs

}

main
