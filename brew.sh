#!/usr/bin/env bash
# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


# installing python from brew so that pip comes with it
brew install python
# python3
brew install python3
pip3 install pip

python3 -m pip install --upgrade pip
pip3 install virtualenv virtualenvwrapper --user

#pip3 install jupyter
#pip3 install jupyter_contrib_nbextensions

# brew install scala
# brew install apache-spark

# gui applications
brew install dropbox \
	iterm2 \
	spotify \
	vlc \
	cheatsheet \
	google-chrome \
	slack

# brew cask install 1password # encrypted credentials in this directory

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Macvim!
brew install vim
brew install macvim
# add plug, for vim plugin management.  do :PlugInstall in vim to install plugins from .vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# curl alternative
# brew install httpie

# Install more recent versions of some OS X tools
brew install homebrew/dupes/grep

# everything else
brew install htop # better than top
brew install vimpager # color highlighting in less type commands

brew install tree # depth indented ls

brew install reattach-to-user-namespace # copy/paste support for os-x and tmux

brew install zsh-syntax-highlighting

# ctrl-r fuzzy finder
brew install fzf
$(brew --prefix)/opt/fzf/install

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
# brew install pgcli

# to cleanup the dock via CLI
brew install dockutil
