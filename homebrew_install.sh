#!/bin/bash

echo "installing homebrew..."
which brew >/dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "run brew doctor..."
which brew >/dev/null 2>&1 && brew doctor

echo "run brew update..."
which brew >/dev/null 2>&1 && brew update

echo "ok. run brew upgrade..."

brew upgrade --all

formulas=(
    git
    wget
    curl
    tree
    openssl
    docker
    colordiff
    zsh
    zplug
    neovim
    "--HEAD universal-ctags/universal-ctags/universal-ctags"
    cask
    fzf
    fzy
    peco
    tig
    node
    python3
    go
    ruby
    lua
    "vim --with-lua"
    gcc
    pipenv
    pyenv
    pyenv-virtualenv
    carthage
    mysql
    postgresql
    sqlite
    ricty
    ripgrep
    direnv
    jq
    diff-so-fancy
    thefuck
    hub
    graphviz
    plantuml
    reattach-to-user-namespace
    ansiweather
)

"brew tap..."
brew tap homebrew/core
brew tap homebrew/cask
brew tap homebrew/cask-drivers
brew tap homebrew/cask-fonts
brew tap brewsci/science
brew tap sanemat/font

echo "start brew install apps..."
for formula in "${formulas[@]}"; do
    brew install $formula || brew upgrade $formula
done

casks=(
    dropbox
    google-chrome
    google-japanese-ime
    slack
    alfred
    iterm2
    cyberduck
    docker
    gotop
    virtualbox
)

echo "start brew cask install apps..."
for cask in "${casks[@]}"; do
    brew cask install $cask
done

brew cleanup
brew cask cleanup

cat << END
**************************************************
HOMEBREW INSTALLED! bye.
**************************************************
END
