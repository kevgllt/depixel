# add the raspberry pi os gpg key
wget -O - http://archive.raspberrypi.org/debian/raspberrypi.gpg.key | sudo apt-key add -
# add the raspberry pi os apt repository
echo deb http://archive.raspberrypi.org/debian/ $(lsb_release -cs) main | sudo tee /etc/apt/sources.list.d/raspios.list
# update repositories
sudo apt update
# Apply updates
sudo apt upgrade -y
# install pixel
sudo apt install raspberrypi-ui-mods -y
