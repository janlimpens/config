# Meine dotfiles

## Grundsätzliches Setup:


```
git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc

```

## Wenn ich es clone (neues Setup)


```
git clone --bare <git-repo-url> $HOME/.cfg
# usw...

```

