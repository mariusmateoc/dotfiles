#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh"

declare -r LOCAL_SHELL_CONFIG_FILE="$HOME/.bash.local"
declare -r VOLTA_DIRECTORY="$HOME/.volta"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

add_volta_configs() {

    declare -r CONFIGS="
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Volta Version Manager
# https://volta.sh/

export VOLTA_HOME=\"\$HOME/.volta\"
export PATH=\"\$VOLTA_HOME/bin:\$PATH\"

"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    execute \
        "printf '%s' '$CONFIGS' >> $LOCAL_SHELL_CONFIG_FILE \
            && . $LOCAL_SHELL_CONFIG_FILE" \
        "Volta (update $LOCAL_SHELL_CONFIG_FILE)"

}

install_volta() {

    # Install Volta and add the necessary
    # configs in the local shell config file.
    execute \
        "command curl -sSLf https://get.volta.sh | bash -s -- --skip-setup" \
        "Volta (install)" \
    && add_volta_configs

}

update_volta() {
    execute \
        "command curl -sSLf https://get.volta.sh | bash -s -- --skip-setup" \
        "Volta (update)"
        
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple "\n   Volta\n\n"

    if [ ! -d "$VOLTA_DIRECTORY" ]; then
        install_volta
    else
        update_volta
    fi

}

main
