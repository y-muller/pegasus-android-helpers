# Install Skyscraper and pegasus-android-helpers

# update package list and and upgrade
apt-get update && 
	apt-get -o "Dpkg::Options::=--force-confold"  upgrade -q -y &&
	apt-get -o "Dpkg::Options::=--force-confold"  dist-upgrade -q -y
pkg autoclean
pkg update -y && pkg upgrade -y

# install required app - 
cmd package list packages|grep com.termux.api 
if ! cmd package list packages|grep com.termux.api ; then
    termux-open https://f-droid.org/packages/com.termux.api
    read -n 1 -r -s -p "Press any key to continue..." key
fi
if ! cmd package list packages|grep com.termux.widget ; then
    termux-open https://f-droid.org/packages/com.termux.widget
    read -n 1 -r -s -p "Press any key to continue..." key
fi
if ! cmd package list packages|grep com.llamalab.automate ; then
    termux-open https://play.google.com/store/apps/details?id=com.llamalab.automate
    read -n 1 -r -s -p "Press any key to continue..." key
fi

# install required packages
# the x11 repository is needed for Qt5
pkg install x11-repo -y
pkg install build-essential qt5-qmake git zstd -y
pkg install termux-api -y

# keep the downloaded repos in the src directory
mkdir -p src
cd src

# Skyscraper
if [[ -d skyscraper ]]; then
    cd skyscraper
    git pull
else
    git clone https://github.com/detain/skyscraper.git
    cd skyscraper
fi
qmake
make
cp Skyscraper /data/data/com.termux/files/usr/bin

# run Skyscraper once to get the .skyscraper directory structure
Skyscraper

# pegasus-android-helpers
cd ~/src
if [[ -d pegasus-android-helpers ]]; then
    cd pegasus-android-helper
    git pull
else
    git clone https://github.com/y-muller/pegasus-android-helpers
    cd pegasus-android-helpers
fi
source ./install_helpers.sh

