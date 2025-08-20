#!/bin/bash
PROCESS="$1"
WINDOW_CLASS="$2"
COMMAND="$3"

# Use process name if window class not provided
if [ -z "$WINDOW_CLASS" ]; then
  WINDOW_CLASS="$PROCESS"
fi

# Use process name if command not provided
if [ -z "$COMMAND" ]; then
  COMMAND="$PROCESS"
fi

pgrep "$PROCESS" && hyprctl dispatch focuswindow class:"$WINDOW_CLASS" || $COMMAND
