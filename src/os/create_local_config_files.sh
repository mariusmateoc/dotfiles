#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

create_bash_local() {

    declare -r FILE_PATH="$HOME/.bash.local"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    declare -r CONFIGS="
#!/bin/bash

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# When trying to use the bash+curl verifying method on a server, this
# cryptic error message might happen:
# gpg: signing failed: Inappropriate ioctl for device
# Ref: https://github.com/keybase/keybase-issues/issues/2798

export GPG_TTY=$(tty)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Set PATH for custom functions
# https://github.com/mariusmateoc/dotfiles/tree/master/src/bin

PATH=\"\$PATH:\$HOME/projects/dotfiles/src/bin\"

export PATH
"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    if [ ! -e "$FILE_PATH" ] || [ -z "$FILE_PATH" ]; then
        printf "%s\n" "$CONFIGS" >> "$FILE_PATH"
    fi

    print_result $? "$FILE_PATH"

}

create_gitconfig_local() {

    declare -r FILE_PATH="$HOME/.gitconfig.local"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    if [ ! -e "$FILE_PATH" ] || [ -z "$FILE_PATH" ]; then

        printf "%s\n" \
"[commit]

    # Sign commits using GPG.
    # https://help.github.com/articles/signing-commits-using-gpg/

    # gpgsign = true

[tag]

    # gpgsign = true

[gpg]

    # program = gpg

[user]

    name =
    email =
    # signingkey =" \
        >> "$FILE_PATH"
    fi

    print_result $? "$FILE_PATH"

}

create_vimrc_local() {

    declare -r FILE_PATH="$HOME/.vimrc.local"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    if [ ! -e "$FILE_PATH" ]; then
        printf "" >> "$FILE_PATH"
    fi

    print_result $? "$FILE_PATH"

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple "\n • Create local config files\n\n"

    create_bash_local
    create_gitconfig_local
    create_vimrc_local

}

main
