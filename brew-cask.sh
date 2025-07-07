#!/bin/bash

# to maintain cask ....
#     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup`

# Install native apps
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# daily
brew install --cask rescuetime
brew install --cask notion
brew install --cask notion-calendar
brew install --cask messenger
brew install --cask raycast
brew install --cask rectangle
brew install --cask selfcontrol


# dev
brew install --cask iterm2
brew install --cask insomnia
brew install --cask sourcetree

# browsers
brew install --cask google-chrome
brew install --cask firefox

brew install --cask spotify

brew install --cask slack


# Version manager
brew install mise

brew install direnv

#Java
brew install visualvm # Java profiler



brew install --cask jetbrains-toolbox

brew install azure-cli
brew install k9s
brew install uv
brew install kubectl

brew install --cask cursor
brew install --cask ollamac
