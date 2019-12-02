#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Make ZSH the default shell environment
chsh -s $(which zsh)

# Check for Composer and install if we don't have it
if test ! $(which composer); then
    curl -sS https://getcomposer.org/installer | php
    mv composer.phar /usr/local/bin/composer
fi

# Install global Composer packages
composer global require consolidation/cgr
composer global require hirak/prestissimo

cgr bramus/mixed-content-scan
cgr friendsofphp/php-cs-fixer
cgr laravel/envoy
cgr laravel/installer
cgr laravel/valet
cgr phpmd/phpmd
cgr spatie/http-status-check
cgr spatie/phpunit-watcher
cgr towa/towa-cli

echo "Backing up current ~/.zshrc file to ~/.dotfiles/.zshrc_backup"
mv ~/.zshrc ~/.dotfiles/.zshrc_backup

rm $HOME/.zshrc
ln -s $HOME/.dotfiles/zsh/.zshrc $HOME/.zshrc

source $HOME/.zshrc
