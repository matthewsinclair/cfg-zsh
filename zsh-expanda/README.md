# ZSH Expanda

**ZSH Expanda** is a utility to insert frequently used commands into your terminal with just a few keystrokes. It uses a hierarchical menu system to quickly navigate to and select commands without having to remember them.

## Features

- Navigate command directories with single keystrokes
- Executes shell scripts to generate commands
- Inserts commands directly into your prompt
- User-defined command repository structure
- Minimal UI for faster workflow

## Usage

1. Press the configured keybinding (default: Ctrl+J)
2. Navigate the menu by typing the first letter of a directory or command
3. Select a command to insert it into your prompt

## Configuration

Set up your ZSH configuration with:

```zsh
# Required for history management
setopt HIST_IGNORE_SPACE

# Path to your command modules
export ZSH_EXPANDA_MODULE_PATH="$HOME/.config/zsh-expanda-modules"

# Load the expanda function
source ~/.local/share/cfg-zsh/zsh-expanda/zsh-expanda.zsh

# Register the widget and bind to Ctrl+J (or your preferred key)
zle -N zsh-expanda
bindkey "^J" zsh-expanda
```

## Credits

This tool is based on [Empty Enter Expander](https://github.com/dawikur/empty-enter-expander), modified for personal use.