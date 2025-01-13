# Dotfiles

This repository contains my dotfiles. I use [GNU Stow](https://www.gnu.org/software/stow/) to manage them.

## Installation

I built neovim, zoxide, fzf, etc from source

```bash
sudo apt install stow zsh curl wget git
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/HarbingerDawn/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow .
```
