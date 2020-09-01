#!/usr/bin/env bash

# turn off foreign/accented keys on hold
defaults write -g ApplePressAndHoldEnabled -bool false

# make keys repeat faster
defaults write -g InitialKeyRepeat -int 11 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)


# show hidden files in finder
defaults write com.apple.finder AppleShowAllFiles YES

# turn on hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
# 13: Lock Screen
defaults write ~/Library/Preferences/com.apple.dock.plist wvous-tr-corner -integer 3
defaults write ~/Library/Preferences/com.apple.dock.plist wvous-bl-corner -integer 4
defaults write ~/Library/Preferences/com.apple.dock.plist wvous-br-corner -integer 2
defaults write ~/Library/Preferences/com.apple.dock.plist wvous-tl-corner -integer 11

# number of columns and rows in the dock springboard set to 16
defaults write com.apple.dock springboard-rows -int 16
defaults write com.apple.dock springboard-columns -int 16


# increase trackpad sensitivity
defaults write -g com.apple.trackpad.scaling -float 25.0
defaults write -g com.apple.mouse.scaling -float 15.0


# turn on right click
defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseButtonMode TwoButton

# tap click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true

defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 1
defaults write -g com.apple.mouse.tapBehavior -int 1

# speed up mission control animations
defaults write com.apple.dock expose-animation-duration -float 0.5



# supposedly improve bluetooth audio quality
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "Dan Lee | Pinterest"

# safari show full url
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true
# backspace to view previous page
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool true


