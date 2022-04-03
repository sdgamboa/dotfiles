# Dotfiles

## New machine or installation

+ Download this repository to your home directory:

```
cd
git clone git@github.com:sdgamboa/dotfiles.git
```

+ Replace dotfiles if needed. For example:

```
mv ~/dotfiles/.vimrc ~/.vimrc
```

+ Add symbolic link to keep the file updated when you edit your dotfile:

```
## ln -sf <TARGET/REAL_FILE> <SYMLINK>
ln -sf ~/dotfiles/.vimrc ~/.vimrc 
```
