#!/usr/bin/env bash

# init
function pause(){
   read -p "$*"
 }
# Hack to remind me to get Xcode.

# Christen the machine after its patron saint.

# Get the things to make us go.
brew install git
brew install mysql
brew install tmux
brew install wget
brew install node
brew install node
brew install heroku-toolbelt
brew install wkhtmltopdf
gem install jekyll bundler
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/homebrew-php
brew tap homebrew/binary
brew install packer
brew install php56
brew tap phinze/cask
brew install brew-cask
brew cask install google-chrome
brew cask install alfred
brew cask install iterm2
brew cask install skype
brew cask install slack
brew install ansible
brew cask install vagrant
brew cask install virtualbox
brew cask install sequel-pro
brew cask install mou
brew cask install openoffice
brew cask install dropbox
brew cask install flux
brew cask install evernote
brew cask install jing
brew tap nviennot/tmate
brewk install tmate

# mysql should start on launch
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents

# Get useful vagrant plugins.
vagrant plugin install vagrant-hostmanager
vagrant plugin install vagrant-auto_network

# Set up python
brew install python
pip install --upgrade pip
pip install virtualenv
pip install django
pip completion --zsh >> ~/.zprofile

# Install Pantheon's terminus
curl https://github.com/pantheon-systems/cli/releases/download/0.8.1/terminus.phar -L -o /usr/local/bin/terminus && chmod +x /usr/local/bin/terminus

# Get vim configs with Vundle the easy way.
git clone https://github.com/pivotalcommon/vim-config.git ~/.vim
~/.vim/bin/install

# Install Python Mode
git clone https://github.com/klen/python-mode.git ~/.vim/bundle/python-mode

# Install Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Use custom vim configs.
ln -s ~/loki-init/custom.vim ~/.vim/init/custom.vim

# Symlink tmux configs to play nicely with vim.
ln -s ~/.vim/bundle/tmux-config/tmux.conf ~/.tmux.conf

# ZSH customizations
sed -e "s?robbyrussell?pygmalion?g" -in-place ~/.zshrc
echo "ZSH_CUSTOM=$HOME/loki-init/meshev_zsh" >> ~/.zshrc

# Don't rely on Mac's system's ruby. Get your own.
\curl -sSL https://get.rvm.io | bash -s stable --ruby
rvm get head --auto-dotfiles

# Workflow
mkdir ~/meshev-sounds
gem install pomo
wget -O the_crowd_roars.mp3 http://soundbible.com/grab.php\?id\=1995\&type\=mp3
mv the_crowd_roars.mp3 ~/meshev-sounds/.


# Hold my own hand to make sure I finish configuring.
echo "Now that you are done, Michelle, don't forget that you need to:
1. Add your ssh keys (you put them in your secret hiding place)."
pause 'Press [Enter] when you have added your ssh key.'
chmod 400 ~/.ssh/*
echo "Now 2. Remap your Caps to Control."
pause 'Press [Enter] when your caps is actually functional.'
echo "3. Log into Dropbox."
pause 'Press [Enter] when you are in Dropbox.'
echo "Now 4. Change the font and color to Solarized Dark colorscheme and patched Menlo 14pt in iTerm2."
pause 'Press [Enter] when iTerm looks nice.'
echo "NICE WORK, Loki! Time to start some chaos..."
afplay /Users/michelle/meshev-sounds/the_crowd_roars.mp3
