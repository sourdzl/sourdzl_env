# only works on OS X(?), at least havent tried linux

# ssh key stuff, so that we can actually pull stuff from github
# note: must add the key to github account keys for this script to work!

touch ~/.work_profile # make an empty file to fill in with work specific env variables, credentials, etc.

# ssh-keygen -t rsa -b 4096 -C "danzhanglee@gmail.com"
# ssh-add ~/.ssh/id_rsa

# use keychain github credentials
git config --global credential.helper osxkeychain

git config --global user.name "Dan Lee"
git config --global user.email danzhanglee@gmail.com

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# vim-plug package manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# afterwards, in vim do :PlugInstall

# dotbot stuff, ie sym-linking config files to this repo
./dotbot_install

# make zshrc changes live
source ~/.zshrc

echo "SUCCESS!"
