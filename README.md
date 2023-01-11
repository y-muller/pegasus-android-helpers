# pegasus-android-helpers
A few scripts and doc to help with Pegaus Frontend and Skyscraper on Android.

An [automated installation](AUTOINSTALL.md) is available.

## Termux
Termux is required to install Skyscraper. Install [Termux](https://f-droid.org/en/packages/com.termux), [Termux:Widget](https://f-droid.org/en/packages/com.termux.widget) and [Termux:API](https://f-droid.org/en/packages/com.termux.api) from F-Droid. Do not install it from the Play Store as those versions are outdated. Termux:Widget allows to start the scripts from an icon on the home screen and Termux:API is used to start a flow in Automate.


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

If you have installed Termux:API as recommended, you need to run this command:
```
pkg install termux-api
```

You are ready to install Skycraper!

## Skyscraper

See the Skycraper [installation page](INSTALL_SKYSCRAPER.md).

## Helper scripts

**[Scrape](scripts/Scrape)**

Runs Skyscraper on all your game platforms. No configuration is needed as the script reads Skyscraper's config.ini file. The first run can take a long time. The next time, only platforms with new files since the previous run are scraped.

**[CleanMetadata](scripts/CleanMetadata)**

When you delete games, it's assets are still there in your filesystem (covers, videos...). This scripts finds those orphaned files and create a script to delete them. Review the file `pfe_delete_orphans.sh` and run it if you are happy with what you see.

If you are confident you can edit the top of the script to enable automatic deletion.

**[VacuumPFE](scripts/VacuumCache)**

Skyscraper doesn't remove anything from its cache when games are deleted. The script will run the vacuum command on all the platforms.

**[UpdateAndroidCollection](scripts/UpdateAndroidCollection)**

Creating metadata for Android games is a manual process that this script tries to help with. This is described is details [here](ANDROID_APPS.md).

**[Game Menu](scripts/Game%20Menu)**

This script shows a graphical menu to call the other scripts. Termux:API is required for this one as it uses termux-dialog.

*Configuration*

Some of the scripts have optional configuration. Check the top of the scripts for the options but don't modify the scripts themselves. Instead create the file `~/.config/pegasus-android-helpers.conf` and override the variables there.

### Widgets
If you have installed Termux:Widgets you can add shortcuts to your home screen. The scripts MUST be in `.shortcuts`.

### App2Pegasus Automate Flow
Automate is an Android app to, as the name says, automate things on your device. The App2Pegasus automation, or flow, is used to help create metadata for Android games. Its use is explained in the [Android Apps](ANDROID_APPS.md) page.

