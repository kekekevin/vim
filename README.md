# vim

Portable vim configuration.

```sh
git clone https://github.com/kekekevin/vim.git ~/.vim
~/.vim/setup.sh
```

`setup.sh` creates `~/.vimrc` (loading this repo's `vimrc`), installs Vundle, then runs `:PluginInstall` to pull all plugins listed in `vimrc`. It also points `~/.ideavimrc` at this repo's `ideavimrc`.

## IdeaVim

IdeaVim (JetBrains) config lives in `ideavimrc`. `setup.sh` wires it up; to do it manually:

```sh
echo "source ~/.vim/ideavimrc" > ~/.ideavimrc
```
