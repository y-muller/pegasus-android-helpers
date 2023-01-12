# Skyscraper configuration

An example [config file](skyscraper/config.ini.example) is included to get started.

The full documentation for `config.ini` is [here](https://github.com/muldjord/skyscraper/blob/master/docs/CONFIGINI.md).

`InputFolder` is where the ROMs are stored.

`GameListFolder` is optional. The default is to save the metadata in the same directory as the ROMs. I use it to store the metadata in a different place. This is especially useful if Android doesn't have write access to the SD card.

The screenscraper section contains the credentials for the service. Register on https://screenscraper.fr if you don't have an account yet.

There are a couple of extra sections for specific platforms that can be useful;
 * ps2: add CHD files
 * fba: change the paths to use fbneo
 * mame-libretro: change the paths to use mame

