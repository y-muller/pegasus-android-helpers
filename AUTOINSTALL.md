# Automated installation

First install [Termux](https://f-droid.org/en/packages/com.termux) from F-Droid.

I recommend to also install [Termux:API](https://f-droid.org/en/packages/com.termux.api) , [Termux:Widget](https://f-droid.org/en/packages/com.termux.widget) and [Automate](https://play.google.com/store/apps/details?id=com.llamalab.automate) now or run the `install_app.sh` script at the end of the process.

Then in Termux, run the following to setup the storage access and start the installation:
```
termux-setup-storage
curl -L https://raw.githubusercontent.com/y-muller/pegasus-android-helpers/main/install.sh |bash
```

The installation script will be downloaded and executed. The installation steps are:
 * update the package list
 * install the packages needed to build Skyscraper from source
 * clone the Skyscraper repository and build it. This can take a while.
 * clone the pegasus-android-helpers repository and installs the scripts and sample configuration.

If you haven't manually installed Automate and Termux's API and Widget, run the following and follow the prompts:
```
cd ~/src/pegasus-android-helpers
./install_apps.sh
```

### Skyscraper configuration

Skyscraper needs to be configured according to your needs. See the [Skyscraper config](SKYSCRAPER_CONFIG.md) page for details.

### Scripts and Menu

Now you can add a shortcut on the homescreen to the Game Menu script which regroups all the functionality. The method to do this can vary slightly depending on your launcher app. Usually it is a long press on an empty space, choose 'Widgets', find Termux:Widget, select 'Termux shortcut'. In the list, select 'Game Menu' and finally place the shortcut on your homescreen.
Alternatively you can add shortcuts to the individual scripts.

### Optional but useful

I find it really convenient to connect to my device with SSH to edit files, etc...

'''
pkg install openssh
sshd
whoami
passwd
'''

Set a new password for the first connection with the passwd command, then copy your key to the device so you don't need the password anymore with `ssh-copy-id -p8022 u0_a141@192.168.1.105`, adjusting for your user name and address.

Connect to your device with something like this: `ssh -p 8022 u0_a141@192.168.1.105` .

The SSH daemon is persistent after a reboot. You can restart it in Termux or use the SSHd shortcut.

