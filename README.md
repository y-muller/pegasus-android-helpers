# pegasus-android-helpers
A few scripts and doc to help with Pegaus Frontend and Skyscraper on Android.

## Termux
Termux is required to install Skyscraper. Install Termux and Termux:Widget from F-Droid or the Play Store.


I like to install an SSH server so I can do the rest from the comfort of my computer. The `whoami` command gives your user name and also check your WiFi settings for your current IP address.

In Termux:
```
pkg update && pkg upgrade
pkg install openssh
sshd
whoami
passwd
``` 
Set a new password for the first connection with the `passwd` command, then copy your key to the device so you don't need the password anymore with `ssh-copy-id -p8022 u0_a141@192.168.1.105`, adjusting for your user name and address.

Connect to your device with something like this: `ssh -p 8022 u0_a141@192.168.1.105` .

We are ready to install Skycraper!

## Skyscraper

See the Skycraper [installation page](INSTALL_SKYSCRAPER.md).

## Helper scripts

**[Scrape](scripts/Scrape)**

Runs Skyscraper on all your game platforms. No configuration is needed as the script reads Skyscraper's config.ini file. The first run can take a long time. The next time, only platforms with new files since the previous run are scraped.

**[CleanMetadata](scripts/CleanMetadata)**

When you delete games, it's assets are still there in your filesystem (covers, videos...). This scripts finds those orphaned files and create a script to delete them. Review the file `pfe_delete_orphans.sh` and run it if you are happy with what you see.

If you are confident you can edit the top of the script to enable automatic deletion.

**[VacuumPFE](scripts/VacuumPFE)**

Skyscraper doesn't remove anything from its cache when games are deleted. The script will run the vacuum command on all the platforms.

### Widgets
If you have installed Termux:Widgets you can add shortcuts to your home screen. The scripts MUST be in `.shortcuts`.

