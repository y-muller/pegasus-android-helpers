# Install Skyscraper and pegasus-android-helpers

# update package list and and upgrade
apt-get update && 
	apt-get -o "Dpkg::Options::=--force-confold"  upgrade -q -y &&
	apt-get -o "Dpkg::Options::=--force-confold"  dist-upgrade -q -y
pkg autoclean
pkg update -y && pkg upgrade -y

# install required packages
# the x11 repository is needed for Qt5
pkg install x11-repo -y
pkg install build-essential qt5-qmake git zstd -y
pkg install termux-api -y

# keep the downloaded repos in the src directory
mkdir -p ~/src
cd ~/src

# pegasus-android-helpers
cd ~/src
if [[ -d pegasus-android-helpers ]]; then
    cd pegasus-android-helpers
    git pull
else
    git clone https://github.com/y-muller/pegasus-android-helpers -b fork
    cd pegasus-android-helpers
fi

source ./bin/update_skyscraper.sh

# install the helpers only after installing and running Skyscraper
# to make sure .skyscraper already exists.
cd ~/src/pegasus-android-helpers
source ./install_helpers.sh

