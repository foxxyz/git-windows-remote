#!/bin/sh
INSTALL_DIR="/usr/local/bin"
SCRIPT="git-windows-remote"
git clone https://github.com/foxxyz/git-windows-remote.git
# Install script
echo "Installing git windows-remote extension into $INSTALL_DIR..."
sudo install -v -m 0755 "git-windows-remote/git-windows-remote" "$INSTALL_PREFIX/$SCRIPT"
# Remove clone
echo "Removing temporary files..."
rm -rf git-windows-remote
echo "Done! You can now add remotes with 'git windows-remote add ...'"