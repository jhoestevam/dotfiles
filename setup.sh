#!/bin/bash
echo ""
echo "Setup Linux"

sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

sudo apt-get -f install -y

sudo sh install-apt.sh

echo ""
echo "Setup Developer Tools"
echo ""
sh install-java.sh
sh install-golang.sh
sh install-pyenv.sh
sh install-nvm.sh
sh install-rbenv-rvm.sh
sh install-terraform.sh
sh install-virtualbox.sh
sh install-vagrant.sh
sh install-netbeans.sh
sh install-glassfish.sh

echo ""
echo "Setup Text Editors"
echo ""
sh install-atom.sh
sh install-visual-studio.sh
sh install-sublime.sh
sh install-rubymine.sh
sh install-pycharm.sh
sh install-android-studio.sh

echo ""
echo "Setup Browsers"
echo ""
sh install-chrome.sh
sh install-opera.sh

echo ""
echo "Setup Utility"
echo ""
sh install-spotify.sh
sh install-skype-beta.sh
sh install-gitkraken.sh
sh install-popcorn.sh
sh install-messenger.sh

echo ""
echo "Setup pyenv"
echo ""
pyenv install 3.6.0
pyenv global 3.6.0

pip install --upgrade pip
sh install-aws.sh

cp .aliases ~/
cp .bash_completion ~/
cp .bash_prompt ~/
cp .bash_profile ~/
cp .bashrc ~/
cp .inputrc ~/
cp .gitconfig ~/
cp .gitignore_global ~/

mkdir -p ~/.atom
cp config.cson ~/.atom
cp snippets.cson ~/.atom
cp keymap.cson ~/.atom

sudo sh install-atom-plugins.sh
sudo sh install-docker.sh

source $HOME/.bashrc
