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

ask_for_confirmation "Do you want to use Volta for Node.js and Global Packages?"

if answer_is_yes; then
    
    ./../volta.sh
    ./../volta_packages.sh

else

    ./../nvm.sh
    ./../npm.sh

fi

ask_for_confirmation "Do you want to install pyenv and Latest Python?"

if answer_is_yes; then

    ./../pyenv.sh
    ./../pip.sh

fi

./quick_look.sh
./tmux.sh
./video_tools.sh
./../vim.sh
./bash_completions.sh
./web_font_tools.sh

ask_for_confirmation "Do you want to install custom fonts?"

if answer_is_yes; then

    ./fonts.sh
    
fi

brew_cleanup
