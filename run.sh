# only works on OS X(?), at least havent tried linux

# ssh key stuff, so that we can actually pull stuff from github
# note: must add the key to github account keys for this script to work!

ssh-keygen -t rsa -b 4096 -C "danzhanglee@gmail.com"
ssh-add ~/.ssh/id_rsa

# install brew, so we can run ./brew.sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# use keychain github credentials
git config --global credential.helper osxkeychain

git config --global user.name "Dan Lee"
git config --global user.email danzhanglee@gmail.com

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# vim-plug package manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# afterwards, in vim do :PlugInstall

# show hidden files in finder
defaults write com.apple.finder AppleShowAllFiles YES

# turn on hot corners
defaults write ~/Library/Preferences/com.apple.dock.plist wvous-tr-corner -integer 3
defaults write ~/Library/Preferences/com.apple.dock.plist wvous-bl-corner -integer 4
defaults write ~/Library/Preferences/com.apple.dock.plist wvous-br-corner -integer 2
defaults write ~/Library/Preferences/com.apple.dock.plist wvous-tl-corner -integer 3


# increase trackpad sensitivity
defaults write -g com.apple.trackpad.scaling -float 15.0

# dotbot stuff, ie sym-linking config files to this repo
./dotbot_install

# make zshrc changes live
source ~/.zshrc

echo "SUCCESS!"
