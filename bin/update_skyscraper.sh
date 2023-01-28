
if [[ ! -d "~/src" ]]; then
    mkdir -p ~/src
fi
cd ~/src

# Skyscraper
if [[ -d skyscraper ]]; then
    cd skyscraper
    git pull
else
    git clone https://github.com/SoumyBhow/skyscraper -b master
    cd skyscraper
fi
qmake
make
make install

# run Skyscraper once to get the .skyscraper directory structure
Skyscraper

