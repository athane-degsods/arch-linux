#!/bin/bash
SESSION="hack_stack"

# 1. Kill any old session so we start fresh
tmux kill-session -t $SESSION 2>/dev/null

# 2. Start the Deck (Layer 1: htop)
# -d means "detached" (background), -s names the session
tmux new-session -d -s $SESSION 'htop -t'

# 3. Add the other layers (background windows)
tmux new-window -t $SESSION -n 'Traffic' 'nload'
tmux new-window -t $SESSION -n 'Connections' 'sudo iftop'
tmux new-window -t $SESSION -n 'Ports' 'watch -n 1 "ss -tunap"'

# 4. Show the deck
tmux attach -t $SESSION
