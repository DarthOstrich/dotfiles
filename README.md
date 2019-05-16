Stolen from KingLuddite[https://github.com/kingluddite/dotfiles]
# What is this?
dotfiles are used to setup a fresh new dev environment

# Getting setup
## Run install bash script
From the `dotfiles` directory, run this in the terminal:
```
sh install.sh
```
### What that did
* Installed Homebrew
* Installed apps and dependencies (See Brewfile for full list)
* Install Oh-My-ZSH and plugins
* Install Powerlevel9K theme
* Install nerd-font for fancy ligatures in command line

## Run Symlinks bash script
After the install finishes, we want to use all of our saved preferences for our apps. In the terminal run:
```
sh makesymlinks.sh
```

### What that did
Basically, just creates symlinks (shortcuts) to our preference files within this repo.
