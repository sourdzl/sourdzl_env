#!/usr/bin/env bash
# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew
brew update

# python and scala

# installing python from brew so that pip comes with it
brew install python
# python3
brew install python3
pip3 install --upgrade pip
pip3 install jupyter

# scala
brew install scala
# spark
brew install apache-spark

# scala support for jupyter
brew install --HEAD paulp/extras/coursier # scala dependency manager
jupyter-scala/jupyter-scala

# gui applications
brew install caskroom/cask/brew-cask
brew tap caskroom/versions
brew cask install android-file-transfer
brew cask install dropbox
brew cask install iterm2
# brew cask install karabiner
# brew cask install seil
brew cask install slack
brew cask install sublime-text
brew cask install flux
brew cask install cheatsheet
brew cask install vlc
brew cask install spotify
brew cask install macvim

# better previews in finder
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package quicklookase qlvideo

brew cask install 1password # encrypted credentials in this directory

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


# everything else
brew install ag

brew install htop # better than top

brew install vimpager # color highlighting in less type commands

brew install tree # depth indented ls

brew install reattach-to-user-namespace # copy/paste support for os-x and tmux

# ctrl-r fuzzy finder
brew install fzf
/usr/local/opt/fzf/install



#########
# Emacs #
#########
#brew install doxygen # tmux dependency?

#brew install emacs --with-cocoa
brew install tmux

#######
# Git #
#######
# Install updated git
brew install git
# hub - Awesome git wrapper
#brew install hub
brew install node

# Remove outdated versions from the cellar
brew cleanup

# Amazing CLI for postgres made w/ python prompt-toolkit.
brew install pgcli

# cleanup the dock
brew install dockutil
dockutil --remove all

dockutil --add '/Applications/App Store.app'
dockutil --add '/Applications/System Preferences.app'
dockutil --add '/Applications/Slack.app'
dockutil --add '/Applications/iTerm.app'
dockutil --add '/Applications/Safari.app'
dockutil --add '/Applications/Google Chrome.app'
dockutil --add '/Applications/Spotify.app'
dockutil --add '/Applications/Calendar.app'
dockutil --add '/Applications' --view grid --display stack
dockutil --add '~/Downloads' --view fan --display folder --allhomes
dockutil --add '~' --view grid --display stack
