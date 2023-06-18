#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_plugin() {
    execute "code-insiders --install-extension $2" "$1 plugin"
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Visual Studio Code\n\n"                                :

# Install VSCode
brew_install "Visual Studio Code" "visual-studio-code" "--cask"
brew_install "Visual Studio Code Insiders" "visual-studio-code-insiders" "--cask" "homebrew/cask-versions"

printf "\n"

# Install the VSCode plugins
install_plugin "EditorConfig" "EditorConfig.EditorConfig"
install_plugin "ESLint" "dbaeumer.vscode-eslint"
install_plugin "MarkdownLint" "DavidAnson.vscode-markdownlint"
install_plugin "Dash" "deerawan.vscode-dash"
install_plugin "File Utils" "sleistner.vscode-fileutils"
install_plugin "Advanced New File" "patbenatar.advanced-new-file"
install_plugin "Xdebug" "xdebug.php-debug"
install_plugin "PHP DocBlocker" "neilbrayfield.php-docblocker"
install_plugin "YAML Support" "redhat.vscode-yaml"
install_plugin "Copilot Chat" "GitHub.copilot-chat"
install_plugin "Copilot Labs" "GitHub.copilot-labs"
install_plugin "Copilot Nightly" "GitHub.copilot-nightly"
install_plugin "Prettier" "esbenp.prettier-vscode"


# Close VSCode
osascript -e 'quit app "Visual Studio Code Insiders"'
