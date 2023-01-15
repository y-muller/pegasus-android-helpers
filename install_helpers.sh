# copy shortcut scripts to .shortcuts
mkdir -p ~/.shortcuts
cp scripts/* ~/.shortcuts/
echo "Helper scripts copied to ~/.shotcuts"

# copy other scripts to bin
mkdir -p ~/bin
cp bin/* ~/bin/
echo "Other scripts (not shortcuts) copied to ~/bin"

# copy example Skyscraper config to .skyscraper
cp skyscraper/* ~/.skyscraper
echo "Sample configs copied to ~/.skycraper"

# copy a minimal .profile if it doesn't exist
if [[ ! -f ~/.profile ]]; then
    cp dot_profile ~/.profile
    echo "Minimal .profile copied to home directory."
fi

# copy the Automate flow to Download
cp automate/* /storage/emulated/0/Download/
echo "Automate flow App2Pegasus copied to Download."
echo "  Import it in Automate or delete it if unneeded."

