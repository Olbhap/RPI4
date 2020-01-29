//Thanks to Yehor from Retropie.org.uk Forum
//https://retropie.org.uk/forum/topic/23984/solved-rpi4-sdl2-problem-during-installation-meanwhile-its-available-via-apt-get/3

sudo apt-get update -y && sudo apt-get upgrade -y && sudo reboot
sudo apt-get install git

git clone --single-branch --branch fkms_rpi4 --depth=1 https://github.com/RetroPie/RetroPie-Setup.git
cd ./RetroPie-Setup
git fetch && git checkout fkms_rpi4

sudo ./retropie_packages.sh 833 depends
sudo ./retropie_packages.sh 833 sources
sudo ./retropie_packages.sh 833 build
cd ./tmp/build/sdl2/
sudo dpkg -i libsdl2-2.0-0_2.0.10*.deb

cd ../../..
sudo ./retropie_setup.sh
# go to basic install
#setup autoboot to emulation station 
