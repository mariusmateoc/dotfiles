#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh"

declare -r LOCAL_SHELL_CONFIG_FILE="$HOME/.bash.local"
declare -r PYENV_DIRECTORY="$HOME/.pyenv"
declare -r PYENV_GIT_REPO_URL="https://github.com/pyenv/pyenv.git"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

add_configs() {
    # Check if the configs need to be added.
    if command -v pyenv &> /dev/null; then
        return
    fi

    declare -r CONFIGS="
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Python Version Manager

export PYENV_ROOT=\"\$HOME/.pyenv\"
export PATH=\"\$PYENV_ROOT/bin:\$PATH\"
eval \"\$(pyenv init -)\"

"

    update_local_shell_configs "$CONFIGS"
}

install_latest_python() {

    # Install the latest stable version of Python
    # (this will also set it as the default).
    execute \
        ". $LOCAL_SHELL_CONFIG_FILE \
            && pyenv install 3.13.12" \
        "pyenv (Install Python 3.13.12)" \
    && execute \
        ". $LOCAL_SHELL_CONFIG_FILE \
            && pyenv global 3.13.12" \
        "pyenv (Set Python 3.13.12 as global version)"
}

install_pyenv() {

    # Install pyenv and add the necessary
    # configs in the local shell config file.
    execute \
        "git clone --quiet $PYENV_GIT_REPO_URL $PYENV_DIRECTORY" \
        "pyenv (install)" \
    && add_configs
}

update_pyenv() {
    execute \
        "cd \$(pyenv root) \
        && git pull" \
        "pyenv (update)"
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple "\n   Pyenv and Python \n\n"

    if [ ! -d "$PYENV_DIRECTORY" ]; then
        install_pyenv
        install_latest_python
    else
        update_pyenv
    fi

}

main
