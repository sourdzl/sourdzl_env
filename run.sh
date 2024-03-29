#!/usr/bin/env bash
# only works on OS X!

# ssh key stuff, so that we can actually pull stuff from github
# note: must add the key to github account keys for this script to work!

touch ~/.work_profile # make an empty file to fill in with work specific env variables, credentials, etc.

# need to set this stuff up already to clone the repo from github
# ssh-keygen -t rsa -b 4096 -C "danzhanglee@gmail.com"
# ssh-add ~/.ssh/id_rsa

# use keychain github credentials
# git config --global credential.helper osxkeychain

# instead of using hardcoded manual ones
# git config --global user.name "Dan Lee"
# git config --global user.email danzhanglee@gmail.com

# vim-plug package manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# afterwards, in vim do :PlugInstall
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install brew, so we can run ./brew.sh and install python
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/danlee/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"

./brew.sh
./osx_settings.sh
./dock.sh

echo 'deleting local config files and symlinking to repo copy...'
rm ~/.zshrc
rm ~/.zsh_profile
rm ~/.vimrc
rm ~/.gitconfig

# install python2 in brew.sh, which was removed from os x.  this is needed for dotbot
./dotbot_install

echo "SUCCESS!"
zsh
