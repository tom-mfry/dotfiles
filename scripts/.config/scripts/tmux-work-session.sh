#!/bin/bash

SESSION_NAME="dev"
WAIT_TIME=0.1

# Check if the tmux session already exists
if tmux has-session -t $SESSION_NAME 2>/dev/null; then
    # If the session exists, attach to it
    tmux attach-session -t $SESSION_NAME
else
    # If the session doesn't exist, create a new one and set up windows
    tmux new-session -d -s $SESSION_NAME

    windows=("git" "docker" "build" "test" "log")

    for window in "${windows[@]}"; do
        tmux new-window -t $SESSION_NAME: -n "$window"
	sleep 0.1
        tmux send-keys -t $SESSION_NAME:"$window" 'g3grc' Enter
	sleep 0.1
    done

    tmux send-keys -t $SESSION_NAME:build 'cd resources/client/' Enter

    for window in "${windows[@]}"; do
	tmux send-keys -t $SESSION_NAME:$window C-l;
    done

    # Attach to the newly created session
    tmux attach-session -t $SESSION_NAME
fi


