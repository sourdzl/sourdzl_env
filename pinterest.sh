# pinboard stuff
brew install watchman

git config --global user.email dlee@pinterest.com
git config --global user.name dlee

cd ~/code
git clone --depth 1 ssh://git@phabricator.pinadmin.com/diffusion/P/pinboard.git

# watcher
/usr/local/bin/python3 -m pip install --upgrade pip
python3 -m pip install macfsevents watchdog

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

nvm install 14 && nvm alias default v14 && nvm use default # Install node
npm i -g yarn
cd ~/code/pinboard/webapp && yarn

# arcanist
arc set-config phabricator.uri https://phabricator.pinadmin.com/
arc install-certificate


# gironde
gironde setup

