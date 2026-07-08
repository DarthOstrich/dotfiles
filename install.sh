#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if it doesn't exist
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install all our dependencies with bundle (See Brewfile)
brew bundle

# install global npm modules
npm i -g nodemon snyk prettier

# Install oh-my-zsh to $HOME directory
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install oh-my-zsh plugins
git clone https://github.com/djui/alias-tips.git ~/.oh-my-zsh/custom/plugins/alias-tips
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Create dev directories
mkdir $HOME/Dev

# Clone nvim config
git clone https://github.com/DarthOstrich/nvim ~/.config/nvim

# Create symlinks
bash makesymlinks.sh


# Set macOS preferences
# We will run this last because this will reload the shell
source .macos
