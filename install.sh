#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if it doesn't exist
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# install global npm modules
npm i -g nodemon snyk prettier

# Install oh-my-zsh to $HOME directory
sh -c "$(cd && curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Powerlevel10K theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Install oh-my-zsh plugins
git clone https://github.com/djui/alias-tips.git ~/.oh-my-zsh/custom/plugins/alias-tips
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Create dev directories
mkdir $HOME/Dev

# Install Vundle for Vim
# git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


# Create symlinks
sh makesymlinks.sh

# Install Vim Plugins
# TODO Figure out how to install nvim plugins
# echo "Installing vim Plugins"
# vim +PlugInstall +qall
# echo "Done!"


# Set macOS preferences
# We will run this last because this will reload the shell
source .macos
