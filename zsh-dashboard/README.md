# ZSH Dashboard

**ZSH Dashboard** displays an information-rich and visually appealing dashboard in your terminal. With a quick keystroke, you can see git information and directory contents at a glance.

## Features

- **Top:** Recent commits (`git log`) with colorized output
- **Center:** Current git status (hybrid of `git status` and `git diff --stat`)
- **Bottom:** Files in the current directory (using `eza`)

Empty components, such as `git status` in a clean repo, are automatically hidden.

## Requirements

- [eza](https://github.com/eza-community/eza) - Modern `ls` replacement
- A [Nerdfont](https://www.nerdfonts.com/) - For proper icon display

## Configuration

Set these variables in your `.zshrc` before loading the script:

```zsh
# Dashboard configuration
export ZSH_DASHBOARD_GITLOG_LINES=5      # Number of git log entries to show
export ZSH_DASHBOARD_GITSTATUS_LINES=12  # Number of git status items to show
export ZSH_DASHBOARD_FILES_LINES=4       # Number of directory file lines to show
export ZSH_DASHBOARD_DISABLED_BELOW_TERM_HEIGHT=15  # Minimum terminal height

# Load the dashboard
source ~/.local/share/cfg-zsh/zsh-dashboard/zsh-dashboard.zsh

# Bind to Ctrl+O (or your preferred key)
bindkey '^O' zsh-dashboard
```

## Credits

This utility is based on [zsh-magic-dashboard](https://github.com/chrisgrieser/zsh-magic-dashboard) by Chris Grieser, modified for personal use.