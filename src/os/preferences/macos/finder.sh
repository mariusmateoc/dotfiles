#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Finder\n\n"

execute "defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true && \
         defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true && \
         defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true" \
    "Automatically open a new Finder window when a volume is mounted"

execute "defaults write com.apple.finder _FXShowPosixPathInTitle -bool true" \
    "Use full POSIX path as window title"

execute "defaults write com.apple.finder DisableAllAnimations -bool true" \
    "Disable all animations"

execute "defaults write com.apple.finder WarnOnEmptyTrash -bool false" \
    "Disable the warning before emptying the Trash"

execute "defaults write com.apple.finder FXDefaultSearchScope -string 'SCcf'" \
    "Search the current directory by default"

execute "defaults write com.apple.finder FXInfoPanesExpanded -dict \
            General -bool true \
            OpenWith -bool true" \
    "Expand General and Open With file info panes by default"

execute "defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false" \
    "Disable warning when changing a file extension"

execute "defaults write com.apple.finder FXPreferredViewStyle -string 'Nlsv' && \
         defaults write com.apple.finder CustomViewStyle -string 'Nlsv'" \
    "Use list view in all Finder windows by default"

execute "defaults write com.apple.finder QLEnableTextSelection -bool true" \
    "Allow text selection in the Quick Look window"

execute "defaults write com.apple.finder ShowStatusBar -bool true" \
    "Show status bar"

execute "defaults write com.apple.finder NewWindowTarget -string 'PfLo' && \
         defaults write com.apple.finder NewWindowTargetPath -string 'file://$HOME/'" \
    "Set $HOME as the default location for new Finder windows"

execute "defaults write com.apple.finder ShowRecentTags -bool false" \
    "Do not show recent tags"

execute "defaults write -g AppleShowAllExtensions -bool true" \
    "Show all filename extensions"

execute "/usr/libexec/PlistBuddy -c 'Set :StandardViewSettings:ExtendedListViewSettingsV2:iconSize 32' ~/Library/Preferences/com.apple.finder.plist && \
         /usr/libexec/PlistBuddy -c 'Set :StandardViewSettings:ListViewSettings:iconSize 32' ~/Library/Preferences/com.apple.finder.plist" \
    "Set icon size"

execute "/usr/libexec/PlistBuddy -c 'Set :StandardViewSettings:ExtendedListViewSettingsV2:textSize 13' ~/Library/Preferences/com.apple.finder.plist && \
         /usr/libexec/PlistBuddy -c 'Set :StandardViewSettings:ListViewSettings:textSize 13' ~/Library/Preferences/com.apple.finder.plist" \
    "Set icon label text size"

execute "/usr/libexec/PlistBuddy -c 'Set :StandardViewSettings:ExtendedListViewSettingsV2:sortColumn dateAdded' ~/Library/Preferences/com.apple.finder.plist && \
         /usr/libexec/PlistBuddy -c 'Set :StandardViewSettings:ListViewSettings:sortColumn dateAdded' ~/Library/Preferences/com.apple.finder.plist" \
    "Set sort by date added"

killall "Finder" &> /dev/null

# Starting with Mac OS X Mavericks preferences are cached,
# so in order for things to get properly set using `PlistBuddy`,
# the `cfprefsd` process also needs to be killed.
#
# https://github.com/alrra/dotfiles/commit/035dda057ddc6013ba21db3d2c30eeb51ba8f200

killall "cfprefsd" &> /dev/null
