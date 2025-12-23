#!/bin/bash
SESSION="main_hack"

# 1. Kill old session to start fresh
tmux kill-session -t $SESSION 2>/dev/null

# 2. Window 1: Hacking (The Terminal)
# We name it 'hack' and start Zsh
tmux new-session -d -s $SESSION -n 'hack' 'zsh'

# 3. Window 2: Planning (Gemini)
# We name it 'plan'. Replace 'gemini-cli' with your actual command.
# If you don't have a cli yet, use 'pip install gemini-chat-cli' or similar.
tmux new-window -t $SESSION -n 'research' 'zsh' 
tmux select-window -t $SESSION:hack

# 4. Attach
tmux attach -t $SESSION
