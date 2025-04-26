# ZSH Configuration

This repository contains customized ZSH utilities and configurations.

## Contents

### ZSH Expanda
A utility to quickly insert commands into your terminal with hierarchical menus.
- See [zsh-expanda/README.md](./zsh-expanda/README.md) for details

### ZSH Dashboard
An information-rich dashboard showing git status, recent commits, and directory files.
- See [zsh-dashboard/README.md](./zsh-dashboard/README.md) for details

## Installation

Add the following to your `~/.zshrc`:

```zsh
# ZSH Expanda
setopt HIST_IGNORE_SPACE
export ZSH_EXPANDA_MODULE_PATH="$HOME/.config/zsh-expanda-modules"
source ~/.local/share/cfg-zsh/zsh-expanda/zsh-expanda.zsh
bindkey "^J" zsh-expanda

# ZSH Dashboard
export ZSH_DASHBOARD_GITLOG_LINES=5
export ZSH_DASHBOARD_FILES_LINES=6
source ~/.local/share/cfg-zsh/zsh-dashboard/zsh-dashboard.zsh
bindkey '^O' zsh-dashboard
```

## Requirements

- ZSH shell
- [eza](https://github.com/eza-community/eza) (for dashboard file listings)
- A [Nerdfont](https://www.nerdfonts.com/) (for dashboard icons)