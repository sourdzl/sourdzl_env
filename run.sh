# only works on OS X

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install pip
sudo python get-pip.py

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

# use keychain github credentials
git config --global credential.helper osxkeychain

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# ctrl-r fuzzy finder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# vim-plug package manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# show hidden files in finder
defaults write com.apple.finder AppleShowAllFiles YES

# dotbot stuff
./dotbot_install

# make zsh live
source ~/.zshrc
