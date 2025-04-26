#!/usr/bin/env zsh

# ZSH Expanda - Quick command inserter
# Function to expand commands from a module directory

zsh-expanda() {
  local target="$ZSH_EXPANDA_MODULE_PATH"

  if [[ ! -z $BUFFER ]]; then
    # execute the command that was entered
    zle accept-line
  else
    while true; do
      # No clear here for less disruption
      ls -1 $target

      read -k LETTER

      if [[ "$LETTER" =~ '[a-zA-Z0-9]' ]]; then
        # use depth parameters to search in the current directory only
        LETTER_DEST=$(find "$target" -mindepth 1 -maxdepth 1 -name "$LETTER*")

        if [[ -d "$LETTER_DEST" ]]; then # directory
          target="$LETTER_DEST"
        elif [[ -f "$LETTER_DEST" ]]; then # file
          # No clear here
          output="$(source "$LETTER_DEST")"

          # do nothing on empty output
          [[ -z $output ]] && zle reset-prompt && return

          # use HIST_IGNORE_SPACE to not put the " print -z" command into history
          enter=$'\r' # carriage return character
          zle -U " print -z '$output'$enter"

          return
        else # empty find result
          # No clear here
          echo "ERROR: Not a directory nor a file"
          zle reset-prompt

          return
        fi
      else # other than alphanumeric character was pressed
        # No clear here

        if [[ $LETTER = *[!\ ]* ]]; then # not a space was pressed
          if [[ "$LETTER" == $'\t' ]]; then
            echo "ERROR: Tab key was pressed"
          else
            echo "ERROR: Unknown character was pressed"
          fi
        else # space was pressed
          echo "ERROR: Space bar was pressed"
        fi

        zle reset-prompt
        return
      fi
    done
  fi
}

# Register the ZLE widget
zle -N zsh-expanda