#!/bin/sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/versions
brew tap homebrew/services

brew install dockutil
brew install mas

mas signin f.limadias@gmail.com

dockutil --remove 'System Preferences' --allhomes
dockutil --remove 'iTunes' --allhomes
dockutil --remove 'iBooks' --allhomes
dockutil --remove 'App Store' --allhomes
dockutil --remove 'Photos' --allhomes
dockutil --remove 'Maps' --allhomes
dockutil --remove 'Reminders' --allhomes
dockutil --remove 'Contacts' --allhomes
dockutil --remove 'Calendar' --allhomes
dockutil --remove 'Siri' --allhomes
dockutil --remove 'Safari' --allhomes
dockutil --remove 'Mail' --allhomes
dockutil --remove 'Terminal' --allhomes
dockutil --remove 'Launchpad' --allhomes
dockutil --remove 'Notes' --allhomes
dockutil --remove 'FaceTime' --allhomes
dockutil --remove 'Downloads' --allhomes
dockutil --remove 'Numbers' --allhomes
dockutil --remove 'Keynote' --allhomes
dockutil --remove 'Pages' --allhomes

# Enable tap to click (Trackpad) for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

defaults write NSGlobalDomain AppleShowAllExtensions -bool true # show file extensions
defaults write NSGlobalDomain _HIHideMenuBar -bool true # Hide menu bar
defaults write NSGlobalDomain AppleInterfaceStyle Dark # Dark interface

# Disable emdash and smart quotes
defaults write 'Apple Global Domain' NSAutomaticDashSubstitutionEnabled 0
defaults write 'Apple Global Domain' NSAutomaticQuoteSubstitutionEnabled 0

defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms) # Keyboard repeat rate
defaults write -g KeyRepeat -int 2 # normal minimum is 2 (30 ms) # Keyboard repeat rate
defaults write -g ApplePressAndHoldEnabled -bool false # Don't hold key for other letters

#defaults write com.apple.dock workspaces-auto-swoosh -bool NO # Disable cmd+tab between spaces
#defaults write com.apple.dock mru-spaces -bool false # Don't rerrange spaces based on use
defaults write com.apple.dock autohide-time-modifier -float 0 # Dock hide delay
defaults write com.apple.dock autohide -bool true # Dock hide automatically
defaults write com.apple.dock tilesize -int 30 # Dock height
defaults write com.apple.dock minimize-to-application -bool true # minimise into application icoe
defaults write com.apple.dock wvous-bl-corner -int 10 # Lock hot corner
defaults write com.apple.finder AppleShowAllFiles true # show hidden files
defaults write com.apple.TextEdit RichText -int 0 # plain text in textedit
defaults write com.apple.ImageCapture disableHotPlug -bool true # don't open photos
sudo launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist # disable itunes buttons

defaults write com.apple.screensaver askForPasswordDelay 0
defaults write com.apple.screensaver askForPassword -bool true

killall Dock
killall Finder
killall SystemUIServer

brew install node
brew install yarn --without-node
brew install git
brew install vim
brew unlink vim && brew link vim
brew install cmake # for YCM
(cd cd ~/.vim/bundle/YouCompleteMe; ./install.py --tern-completer )
brew install hub              # Hub from github
brew install the_silver_searcher
brew install mongo
brew services start mongodb
brew cask install spotify
brew cask install slack
brew cask install iterm2
brew cask install dropbox
brew cask install sublime-text
brew install transmission
brew cask install heroku-toolbelt
brew cask install google-chrome
brew cask install unrarx
brew cask install vlc
brew cask install screenhero
brew cask install grandperspective
brew cask install istat-menus
brew cask install 1password
#brew cask install duet
brew cask install moom
brew cask install notion
brew cask install robomongo
brew install mackup


yarn install -g n
yarn global add standard
# yarn install -g jshint
# yarn install -g eslint
# yarn install -g babel-eslint
# yarn install -g eslint-plugin-react
n stable
#git clone git@github.com:rupa/z.git ~/.dotfiles/scripts/z
yarn install gh -g        # More github functionality
yarn install -g mongo-hacker
rm -rf ~/.ssh; ln -s ~/Dropbox/.ssh ~/.ssh
sudo chmod 600 ~/.ssh/*
pip install howdoi

pause
mackup restore


// backup your ~/.ssh/ dir



curl https://install.meteor.com/ | sh


# This repo
git remote set-url origin git@github.com:nosleepfilipe/dotfiles.git
