# Other scripts

The scripts here cannot be used as shortcuts from the launcher. The are copied to `bin/` in the home directory by the installer.

An easy way to be able to use these scripts from anywhere is to have the following in your `.profile`:
```
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
```

## multi2m3u - M3U playlist for multi-disc games 

Using multi-discs games with an M3U playlist is easy. Simply rename each disk with an extension that will not be picked up by the frontend, and create a playlist that points to all the disc files.

The multi2m3u script simply handles the M3U creation and renaming of the game files. It requires each of the discs to have similar names and a fairly straightforward naming convention.

For example, if you have the following files:
```
PoPoLoCrois Monogatari II (Disc 1) [T-En v0.3].chd
PoPoLoCrois Monogatari II (Disc 2) [T-En v0.3].chd
PoPoLoCrois Monogatari II (Disc 3) [T-En v0.3].chd
```
Run the script like this in Termux:
```
$ cd roms/psx
$ multi2m3u PoPoLoCrois\ Monogatari\ II\ \(*
```
(If you are not familiar with the command line, start typing the game's name and press TAB to autocomplete, add a star, press Enter.)

The script will let you know what it is about to do and if you proceed, you will now have the folling files instead:
```
PoPoLoCrois Monogatari II (Disc 1) [T-En v0.3].cd
PoPoLoCrois Monogatari II (Disc 2) [T-En v0.3].cd
PoPoLoCrois Monogatari II (Disc 3) [T-En v0.3].cd
PoPoLoCrois Monogatari II [T-En v0.3].m3u
```
Refresh your metadata and Pegasus should only see the .m3u file and not the .cd discs.

