#!/usr/bin/env bash
# do some OS X configurations

# turn off foreign/accented keys on hold
defaults write -g ApplePressAndHoldEnabled -bool false

# make keys repeat faster
defaults write -g InitialKeyRepeat -int 11 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)


# show hidden files in finder
defaults write com.apple.finder AppleShowAllFiles YES

# turn on hot corners
defaults write ~/Library/Preferences/com.apple.dock.plist wvous-tr-corner -integer 3
defaults write ~/Library/Preferences/com.apple.dock.plist wvous-bl-corner -integer 4
defaults write ~/Library/Preferences/com.apple.dock.plist wvous-br-corner -integer 2
defaults write ~/Library/Preferences/com.apple.dock.plist wvous-tl-corner -integer 3


# increase trackpad sensitivity
defaults write -g com.apple.trackpad.scaling -float 25.0
defaults write -g com.apple.mouse.scaling -float 15.0


# turn on right click
defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseButtonMode TwoButton

# dark mode
sudo defaults write /Library/Preferences/.GlobalPreferences.plist _HIEnableThemeSwitchHotKey -bool true

