# Automated installation

First install [Termux](https://f-droid.org/en/packages/com.termux) from F-Droid. Then in Termux, run the following:
```
curl -L https://raw.githubusercontent.com/y-muller/pegasus-android-helpers/install/install.sh |bash
```

The installation script will be downloaded and executed. The installation steps are:
 * update the package list
 * prompt to install Termux:Widget and Termux:API from F-Droid, and Automate from the Play Store. They are all recommended but you can cancel to skip them if you wish.
 * install the packages needed to build Skyscraper from source
 * clone the Skyscraper repository and build it. This can take a while.
 * clone the pegasus-android-helpers repository and installs the scripts and sample configuration.

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

### Skyscraper configuration

Skyscraper needs to be configured according to your needs. See the [Skyscraper config](SKYSCRAPER_CONFIG.md) page for details.

### Scripts and Menu

Now you can add a shortcut to the Game Menu script which regroups all the functionality. Alternatively you can add shortcuts to the individual scripts.


