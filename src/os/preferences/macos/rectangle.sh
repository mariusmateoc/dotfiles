#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Rectangle\n\n"

execute "defaults write com.knollsoft.Rectangle almostMaximizeHeight -float 0.6" \
    "Set almost maximize height option to 60%"

execute "defaults write com.knollsoft.Rectangle almostMaximizeWidth -float 0.6" \
    "Set almost maximize width option to 60%"

killall "Rectangle" &> /dev/null
