
before cloning

`alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'`

make sure source folder ignores the folder where you'll clone it so there arent any recursion problems.

`echo ".cfg" >> .gitignore`

clone dotfiles into a bare repository

`git clone --bare <git-repo-url> $HOME/.cfg`

define the alias

`alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'`

checkout

`config checkout`
