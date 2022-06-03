#!/bin/bash

# to maintain cask ....
#     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup`

# Install native apps
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# daily
brew cask install spectacle # use rectange instead
brew cask install rescuetime
brew cask install notion

# dev
brew cask install iterm2
brew cask install intellij-idea
brew cask install insomnia
brew cask install sourcetree

# browsers
brew cask install google-chrome-canary
brew cask install firefox

brew cask install spotify

brew cask install slack

# Install JavaSDK
# Will require you to input your account password for privileged installation
brew cask install AdoptOpenJDK/openjdk/adoptopenjdk{8,11,13}

# Install Maven
brew install jenv

# Add jenv to path
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# ensure that JAVA_HOME is correct
jenv enable-plugin export
# make Maven aware of the Java version in use (and switch when your project does)
jenv enable-plugin maven

for version in 8 11 13
do
   jenv add /Library/Java/JavaVirtualMachines/adoptopenjdk-$version.jdk/Contents/Home
done

# Set default global version
jenv global 11.0

# To use a different java version in a specific folder/ project
# jenv local 13.0
