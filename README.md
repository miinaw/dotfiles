# dotfiles
## Usage

1. Move settingfiles to /dotfiles
```
$ cd 
$ git clone git@github.com:miinaw/dotfiles.git
$ mv "settingfile name" dotfiles
```

2. Make symbolic link
```
$ ln -s ~/dotfiles/"settingfile name" ~/"settingfile name"
```

### Environments
```
$ chmod +x ~/dotfiles/install.sh
$ ~/dotfiles/install.sh
$ chmod +x ~/dotfiles/homebrew_install.sh
$ ~/dotfiles/homebrew_install.sh
```

### VSCode environments
```
$ chmod +x ~/dotfiles/vscode_install.sh
$ ~/dotfiles/vscode_install.sh
```