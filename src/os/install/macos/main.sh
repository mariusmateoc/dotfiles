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

printf "\n"
ask_for_confirmation "Use Volta for Node.js and Global Packages? (n) will use nvm"

if answer_is_yes; then
    
    ./../volta.sh
    ./../volta_packages.sh

else

    ./../nvm.sh
    ./../npm.sh

fi

printf "\n"
ask_for_confirmation "Install/Update pyenv, pip, pipenv and install Python 3.8.2?"

if answer_is_yes; then

    ./../pyenv.sh
    ./../pip.sh

fi

printf "\n"
ask_for_confirmation "Install/Update rvm and install latest Ruby?"

if answer_is_yes; then

    ./../rvm.sh

fi

./quick_look.sh
./tmux.sh
./video_tools.sh
./../vim.sh
./bash_completions.sh
./web_font_tools.sh

printf "\n"
ask_for_confirmation "Install custom fonts?"

if answer_is_yes; then

    ./fonts.sh
    
fi

brew_cleanup
