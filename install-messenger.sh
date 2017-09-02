echo ""
echo "Installing Facebook Messenger"

RELEASE='facebook-messenger.deb'
wget "https://updates.messengerfordesktop.com/download/linux/latest/beta?arch=amd64&pkg=deb" -O $HOME/Downloads/$RELEASE
sudo dpkg -i ~/Downloads/$RELEASE
sudo apt-get install -f
