# dotfiles

Collection of dotfiles I use to quickly customize my workflow.

## Get Started

```bash
git clone git@github.com:alexberndt/dotfiles.git
cd dotfiles
./install.sh
```

## Overview

The dotfiles are as follows

### Fonts

```bash
sudo apt install fonts-firacode
```

### Oh My Zsh

```bash
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Tmux

```bash
sudo apt install tmux
```

Install the Tmux plugin manager

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### Alacritty

Installation using [these instructions](https://ubuntuhandbook.org/index.php/2020/12/install-alacritty-ppa-ubuntu-20-04/)

```bash
sudo add-apt-repository ppa:aslatter/ppa
sudo apt install alacritty
```

### Starship

Installation from [these instructions](https://starship.rs/guide/#%F0%9F%9A%80-installation)

```bash
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
```

Then add the following to the end of your `.zshrc`

```bash
eval "$(starship init zsh)"
```
