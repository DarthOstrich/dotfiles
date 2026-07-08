#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="zshrc"               # list of files/folders to symlink in homedir

##########

# figure out where this script actually lives so we can detect a mismatch
scriptdir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# the symlinks are all created relative to $dir (~/dotfiles). If this repo was
# cloned somewhere else (e.g. ~/dev/dotfiles), every symlink will point at a
# path that doesn't exist. Bail out loudly instead of creating broken links.
if [ "$scriptdir" != "$(cd "$dir" 2>/dev/null && pwd)" ]; then
    echo "ERROR: symlinks would point to the wrong place." >&2
    echo "  This repo is located at: $scriptdir" >&2
    echo "  But the symlinks are created relative to: $dir" >&2
    echo "" >&2
    echo "  The dotfiles repo must live at $dir for the symlinks to resolve." >&2
    echo "  Either move/clone it there:" >&2
    echo "      mv \"$scriptdir\" \"$dir\"" >&2
    echo "  or update the 'dir' variable in this script to \"$scriptdir\"." >&2
    exit 1
fi

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

# updating iterm2 preferences
# Currently, this links to /users/jared/dotfiles/preferences for PrefsCustomFolder
# This may need to be updated programatically to prevent issues with preferences not being loaded correctly.

# If you just use the symlink, anytime you change something inside iterm2, it deletes the symlink and creates a new
# preference file com.googlecode.iterm2.plist 

echo "Removing old preferences"
rm ~/Library/Preferences/com.googlecode.iterm2.plist
echo "creating symlink for new preferences"
ln -s ~/dotfiles/preferences/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist

echo "Creating symlink for Claude global rules"
ln -sf ~/dotfiles/claude/CLAUDE.md ~/.claude/CLAUDE.md
echo "Creating symlink for Claude settings"
ln -sf ~/dotfiles/claude/settings.json ~/.claude/settings.json

echo "Creating symlink for Ghostty config"
mkdir -p ~/.config/ghostty
ln -sf ~/dotfiles/ghostty/config ~/.config/ghostty/config

echo "Creating symlink for Starship config"
mkdir -p ~/.config
ln -sf ~/dotfiles/starship.toml ~/.config/starship.toml

echo "Creating symlink for Kitty config"
mkdir -p ~/.config/kitty
ln -sf ~/dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf
ln -sf ~/dotfiles/kitty/Catppuccin-Mocha.conf ~/.config/kitty/Catppuccin-Mocha.conf
ln -sf ~/dotfiles/kitty/current-theme.conf ~/.config/kitty/current-theme.conf
