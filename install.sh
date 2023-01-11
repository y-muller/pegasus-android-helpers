# Attempt to install Skyscraper and pegasus-android-helpers

apt-get update && 
	apt-get -o "Dpkg::Options::=--force-confold"  upgrade -q -y --force-yes &&
	apt-get -o "Dpkg::Options::=--force-confold"  dist-upgrade -q -y --force-yes
pkg autoclean
pkg update -y && pkg upgrade -y

pkg install x11-repo -y
pkg install build-essential qt5-qmake git zstd -y
pkg install termux-api -y

mkdir -p src
cd src

git clone https://github.com/detain/skyscraper.git
cd skyscraper
qmake
make
cp Skyscraper /data/data/com.termux/files/usr/bin

