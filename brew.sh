#!/usr/bin/env bash
# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew
brew update

brew install caskroom/cask/brew-cask
brew tap caskroom/versions
brew cask install android-file-transfer
brew cask install dropbox
brew cask install iterm2
brew cask install karabiner
brew cask install seil
brew cask install slack
brew cask install sublime-text
brew cask install flux


# VLC
brew cask install vlc


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

# Install wget with IRI support
brew install wget --enable-iri

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep

# We're installing python from brew so that pip comes with it
# brew install python

# Install everything else
brew install ag

#########
# Emacs #
#########
brew install emacs --with-cocoa
brew install tmux

#######
# Git #
#######
# Install updated git
brew install git
# hub - Awesome git wrapper
brew install hub
brew install node
# Needed to make terminal-notifier work w/ tmux.
brew install reattach-to-user-namespace

# Remove outdated versions from the cellar
brew cleanup

# Amazing CLI for postgres made w/ python prompt-toolkit.
brew install pgcli
