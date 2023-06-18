#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

./xcode.sh
./homebrew.sh
./bash.sh

./git.sh
./browsers.sh
./compression_tools.sh
./gpg.sh
./image_tools.sh
./misc.sh
./misc_tools.sh
./vscode.sh

# Volta and latest Node.js with frontend dependencies
./../volta.sh
./../volta_packages.sh

# Latest stable python with pip
./../pyenv.sh
./../pip.sh

# Latest version of Ruby
./../rvm.sh

./quick_look.sh
./tmux.sh
./video_tools.sh
./../vim.sh
./bash_completions.sh
./web_font_tools.sh

brew_cleanup
