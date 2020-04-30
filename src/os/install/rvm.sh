#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh"

declare -r LOCAL_SHELL_CONFIG_FILE="$HOME/.bash.local"
declare -r RVM_DIRECTORY="\$HOME/.rvm"
declare -r MPAPIS_KEY="409B6B1796C275462A1703113804BB82D39DC0E3"
declare -r PKUCZYNSKI_KEY="7D2BAF1CF37B13E2069D6956105BD0E739499BDB"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

add_rvm_configs() {

    declare -r CONFIGS="
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Ruby Version Manager

export PATH=\"$RVM_DIRECTORY/bin:\$PATH\"

[[ -s \"$RVM_DIRECTORY/scripts/rvm\" ]] \\
    && source \"$RVM_DIRECTORY/scripts/rvm\"

[[ -s \"$RVM_DIRECTORY/scripts/completion\" ]] \\
    && source \"$RVM_DIRECTORY/scripts/completion\"

"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    execute \
        "printf '%s' '$CONFIGS' >> $LOCAL_SHELL_CONFIG_FILE \
            && . $LOCAL_SHELL_CONFIG_FILE" \
        "rvm (update $LOCAL_SHELL_CONFIG_FILE)"

}

install_latest_ruby() {

    # Install the latest stable version of Ruby
    execute \
        ". $LOCAL_SHELL_CONFIG_FILE \
            && rvm install ruby --latest" \
        "rvm (install latest Ruby)"
}

set_default_ruby() {
    execute \
        ". $LOCAL_SHELL_CONFIG_FILE \
            && rvm alias create default ruby --latest\
            && rvm use default" \
        "rvm (set default Ruby)"
}

import_keys() {

    # Check if `gpg` is installed

    if ! cmd_exists "gpg"; then
        print_error "gpg is required to install rvm!"
        exit 1
    fi

    # https://rvm.io/rvm/security
    # If you encounter problem with the key server above, try alternatives:
    #
    # hkp://pool.sks-keyservers.net
    # hkp://ipv4.pool.sks-keyservers.net
    # hkp://pgp.mit.edu
    # hkp://keyserver.pgp.com
    declare -r KEY_SERVER="hkp://ipv4.pool.sks-keyservers.net"

    execute \
        "gpg --keyserver $KEY_SERVER --recv-keys $MPAPIS_KEY $PKUCZYNSKI_KEY" \
        "rvm (import gpg keys)"

}

refresh_keys() {

    # Refresh keys status to ensure none of them got revoked

    execute \
        "gpg --refresh-keys" \
        "rvm (refresh gpg keys)"

}

install_rvm() {

    # Install `rvm` and add the necessary
    # configs in the local shell config file.

        execute \
            "command \curl -sSL https://get.rvm.io | bash -s -- --ignore-dotfiles" \
            "rvm (install)" \
        && add_rvm_configs

}

update_rvm() {

    execute \
        "rvm get head \
        && rvm reload \
        && rvm get stable" \
        "rvm (upgrade)"

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple "\n   RVM and Latest Ruby \n\n"

    if [ ! -d "$RVM_DIRECTORY" ]; then
        import_keys
        install_rvm
    else
        refresh_keys
        update_rvm
    fi

    install_latest_ruby
    set_default_ruby

}

main
