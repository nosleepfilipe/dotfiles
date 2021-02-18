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

brew install --cask  caffeine
brew install node
brew install yarn
brew install git
brew install vim
brew unlink vim && brew link vim
brew install cmake # for YCM
(cd cd ~/.vim/bundle/YouCompleteMe; chmod +x install.py; ./install.py --tern-completer )
brew install hub              # Hub from github
brew install httpie
brew install mongo
brew install git-extras
brew services start mongodb
brew install --cask  bitbar
brew install --cask  gitify
brew install --cask  spotify
brew install --cask insomnia
brew install --cask  slack
brew install --cask  iterm2
brew install --cask  caffeine
brew install --cask little-snitch
brew tap mongodb/brew
brew install --cask  dropbox
brew install --cask protonvpn
brew install --cask visual-studio-code
brew install --cask  sublime-text
brew install transmission
#brew install --cask  heroku-toolbelt
brew install --cask  google-chrome
#brew install --cask  unrarx
brew install --cask  vlc
brew install --cask  grandperspective
brew install --cask  istat-menus
brew install --cask  1password
#brew install --cask  duet
brew install --cask  moom
brew install --cask  notion
brew install --cask robo-3t
brew install mackup
# install ctags for vim plugin
brew install --HEAD universal-ctags/universal-ctags/universal-ctags
# install nvm 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
yarn global add n
yarn global add standard
yarn global add instant-markdown-d
yarn global add diff-so-fancy
yarn global add serverless
# yarn install -g jshint
# yarn install -g eslint
# yarn install -g babel-eslint
# yarn install -g eslint-plugin-react
n stable
#git clone git@github.com:rupa/z.git ~/.dotfiles/scripts/z
yarn global add gh        # More github functionality
yarn global add mongo-hacker
rm -rf ~/.ssh; ln -s ~/Dropbox/.ssh ~/.ssh
sudo chmod 600 ~/.ssh/*
pip install howdoi

pause
mackup restore


// backup your ~/.ssh/ dir

source ~/.bash_profile

curl https://install.meteor.com/ | sh


# This repo
git remote set-url origin git@github.com:nosleepfilipe/dotfiles.git


sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh

git clone https://github.com/rupa/z.git .z.sh

# Iterm
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/Dropbox/Mackup/Library/Preferences"
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
