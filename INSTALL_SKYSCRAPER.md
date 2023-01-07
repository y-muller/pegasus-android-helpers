# Installing Skyscraper in Termux

In Termux, preferably via SSH, run these commands:

```
pkg install x11-repo
pkg install build-essential qt5-qmake git zstd
git clone https://github.com/detain/skyscraper.git
cd skyscraper
qmake
make
cp Skyscraper /data/data/com.termux/files/usr/bin
```
Depending on your device, this can take quite a while.

Run `Skyscraper` once to create the .skyscraper directory tree.

Skyscraper can do interesting things with downloaded artwork to combile images and more, but keeping it simple works best. The `artwork.xml` file sets the behaviour of the image processing. [This example](skyscraper/artwork.xml) just downloads the assets and saves them. This usually works best with most Pegasus themes.

The configuation of Skyscraper is in `.skyscraper/config.ini`. You can take some inspiration from [this example](skyscraper/config.ini.example).

Read the [documentation](https://github.com/muldjord/skyscraper/blob/master/docs/CONFIGINI.md) for a complete description of `config.ini`.


