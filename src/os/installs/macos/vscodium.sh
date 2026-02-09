#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_plugin() {
    execute "codium --install-extension $2" "$1 plugin"
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Visual Studio Code\n\n"

# Install VSCode
brew_install "Visual Studio Code" "vscodium" "--cask"

printf "\n"

# Install the VSCode plugins
install_plugin "Advanced New File" "patbenatar.advanced-new-file"
install_plugin "EditorConfig" "EditorConfig.EditorConfig"
install_plugin "ESLint" "dbaeumer.vscode-eslint"
install_plugin "File Utils" "sleistner.vscode-fileutils"
install_plugin "MarkdownLint" "DavidAnson.vscode-markdownlint"
install_plugin "PHP DocBlocker" "neilbrayfield.php-docblocker"
install_plugin "Prettier" "esbenp.prettier-vscode"
install_plugin "Xdebug" "xdebug.php-debug"
install_plugin "YAML Support" "redhat.vscode-yaml"

# Close VSCode
osascript -e 'quit app "Visual Studio Code"'
