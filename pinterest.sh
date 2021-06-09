# pinboard stuff
brew install watchman

git config --global user.email dlee@pinterest.com
git config --global user.name dlee

cd ~/code
git clone --depth 1 ssh://git@phabricator.pinadmin.com/diffusion/P/pinboard.git

cd ~/code/pinboard
python3 -m venv .venv         # .venv is the name of the virtual environment
source .venv/bin/activate     # This "activates" the virtual environment. When the virtual env in active, you
                                # should see (.venv) to the left of your terminal prompt after this step
pip3 install -r requirements/lint.txt    
 

# watcher
/usr/local/bin/python3 -m pip install --upgrade pip
python3 -m pip install macfsevents watchdog

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

nvm install 14 && nvm alias default v14 && nvm use default # Install node
npm i -g yarn
# cd ~/code/pinboard/webapp && yarn

# arcanist
arc set-config editor vim
arc set-config phabricator.uri https://phabricator.pinadmin.com/
arc install-certificate


# gironde
gironde setup

