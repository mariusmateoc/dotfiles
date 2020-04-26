#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh"

declare -r LOCAL_SHELL_CONFIG_FILE="$HOME/.bash.local"
declare -r PYENV_DIRECTORY="$HOME/.pyenv"
declare -r PYENV_GIT_REPO_URL="https://github.com/pyenv/pyenv.git"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

add_pyenv_configs() {

    declare -r CONFIGS="
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Python Version Manager

export PYENV_ROOT=\"\$HOME/.pyenv\"
export PATH=\"\$PYENV_ROOT/bin:\$PATH\"
eval \"\$(pyenv init -)\"

"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    execute \
        "printf '%s' '$CONFIGS' >> $LOCAL_SHELL_CONFIG_FILE \
            && . $LOCAL_SHELL_CONFIG_FILE" \
        "pyenv (update $LOCAL_SHELL_CONFIG_FILE)"

}

install_latest_python() {

    # Install the latest stable version of Python
    # (this will also set it as the default).
    execute \
        ". $LOCAL_SHELL_CONFIG_FILE \
            && pyenv install 3.8.2" \
        "pyenv (Install Python 3.8.2)" \
    && execute \
        ". $LOCAL_SHELL_CONFIG_FILE \
            && pyenv global 3.8.2" \
        "pyenv (Set Python 3.8.2 as global version)"
}

install_pyenv() {

    # Install pyenv and add the necessary
    # configs in the local shell config file.
    execute \
        "git clone --quiet $PYENV_GIT_REPO_URL $PYENV_DIRECTORY" \
        "pyenv (install)" \
    && add_pyenv_configs
}

update_pyenv() {
    execute \
        "cd \$(pyenv root) \
        && git pull" \
        "pyenv (update)"
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple "\n   Pyenv, Python and Pip Packages \n\n"

    if [ ! -d "$PYENV_DIRECTORY" ]; then
        install_pyenv
        install_latest_python
    else
        update_pyenv
    fi

}

main
