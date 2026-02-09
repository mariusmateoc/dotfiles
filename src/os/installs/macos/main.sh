#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

./xcode.sh
./homebrew.sh

reload_local_shell_configs
./bash.sh

./git.sh
./../mise.sh
./../pyenv.sh
./browsers.sh
./compression_tools.sh
./fonts.sh
./gpg.sh
./image_tools.sh
./quick_look.sh
./misc.sh
./misc_tools.sh
./vscodium.sh
./video_tools.sh
./../vim.sh
./web_font_tools.sh

./bash_completions.sh
