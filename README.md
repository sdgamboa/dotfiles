# Dotfiles

In this repository, I keep a record of some of my dotfiles for easy access.

## Download repo


+ Download this repository to your home directory:

```bash
cd
git clone git@github.com:sdgamboa/dotfiles.git
```
## Add .vimrc

```bash
cd
mv ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.vimrc ~/.vimrc
```

## Xbindkeys

Enter this command to restart xbindkeys after changes:

```bash
killall xbindkeys && xbindkey
```
