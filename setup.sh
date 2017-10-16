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

killall Dock
killall Finder

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
