#!/usr/bin/env bash
# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# install brew, so we can run ./brew.sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we’re using the latest Homebrew
brew update

# do some OS X configurations

# turn off foreign/accented keys on hold
defaults write -g ApplePressAndHoldEnabled -bool false

# make keys repeat faster
defaults write -g InitialKeyRepeat -int 12 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)


# show hidden files in finder
defaults write com.apple.finder AppleShowAllFiles YES

# turn on hot corners
defaults write ~/Library/Preferences/com.apple.dock.plist wvous-tr-corner -integer 3
defaults write ~/Library/Preferences/com.apple.dock.plist wvous-bl-corner -integer 4
defaults write ~/Library/Preferences/com.apple.dock.plist wvous-br-corner -integer 2
defaults write ~/Library/Preferences/com.apple.dock.plist wvous-tl-corner -integer 3


# increase trackpad sensitivity
defaults write -g com.apple.trackpad.scaling -float 18.0
defaults write -g com.apple.mouse.scaling -float 15.0

# python and scala

# installing python from brew so that pip comes with it
brew install python
# python3
brew install --upgrade python3
pip3 install --upgrade pip

pip3 install virtualenv virtualenvwrapper
# TODO: manually go to the virtualenvwrapper.sh and point it to python3 install by brew

#pip3 install jupyter

#pip3 install jupyter_contrib_nbextensions


# scala
# brew install scala
# spark
# brew install apache-spark

# gui applications
# brew install caskroom/cask/brew-cask
brew tap caskroom/versions
brew cask install android-file-transfer
brew cask install dropbox
brew cask install iterm2
# brew cask install seil
brew cask install slack
brew cask install sublime-text
brew cask install flux
brew cask install cheatsheet
brew cask install vlc
brew cask install spotify
brew cask install google-chrome

# better previews in finder
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package quicklookase qlvideo

# brew cask install 1password # encrypted credentials in this directory

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils
# Install Bash 4
brew install bash
# Install Zsh 5
brew install zsh

# Macvim!
brew install macvim --override-system-vim --with-lua --with-luajit --with-python3

# curl alternative
brew install httpie

brew install wget

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep


# everything else
# brew install ag

brew install htop # better than top

brew install vimpager # color highlighting in less type commands

brew install tree # depth indented ls

brew install reattach-to-user-namespace # copy/paste support for os-x and tmux

# ctrl-r fuzzy finder
brew install fzf
/usr/local/opt/fzf/install



brew install tmux

#######
# Git #
#######
# Install updated git
brew install git
# hub - Awesome git wrapper
# brew install hub
# brew install node

# Remove outdated versions from the cellar
brew cleanup

# Amazing CLI for postgres made w/ python prompt-toolkit.
brew install pgcli

# to cleanup the dock via CLI
brew install dockutil
