# Attempt to install Skyscraper and pegasus-android-helpers

pkg update -y && pkg upgrade -y

pkg install x11-repo
pkg install build-essential qt5-qmake git zstd
pkg install termux-api

mkdir -p src
cd src

git clone https://github.com/detain/skyscraper.git
cd skyscraper
qmake
make
cp Skyscraper /data/data/com.termux/files/usr/bin
