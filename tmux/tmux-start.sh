#!/bin/sh

# Generate a unique session
SESSION="tmux_$(date +%s)"
tmux new-session -s "$SESSION" -d 'bash -i'

# Set base-index to 1 so windows start from 1
tmux set-option -t "$SESSION" base-index 1

# Create 4 windows
tmux new-window -t "$SESSION":1 'bash -i'
tmux new-window -t "$SESSION":2 'bash -i'
tmux new-window -t "$SESSION":3 'bash -i'
tmux new-window -t "$SESSION":4 'bash -i'

# Select window 1 as the default
tmux select-window -t "$SESSION":1

# Attach to the session
tmux -2 attach-session -t "$SESSION"

# Controls
bind -r h resize-pane -L 5
bind -r j resize-pane -D 5
bind -r k resize-pane -U 5
bind -r l resize-pane -R 5
