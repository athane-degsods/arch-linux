#!/bin/zsh
SESSION="scanner_stack"

# 1. Kill old session to clean up
tmux kill-session -t $SESSION 2>/dev/null

# 2. Tab 1: The Scanner (Active Terminal)
# We name it 'scan' and start Zsh. This is where you run nmap/gobuster.
tmux new-session -d -s $SESSION -n 'scan' 'zsh'

# 3. Tab 2: The Cheat Sheet Fetcher
# This runs a loop: asks for query -> fetches -> shows -> repeats
tmux new-window -t $SESSION -n 'cheat' 'zsh -c "while true; do echo -n \"\n\033[1;33mSearch Cheat.sh: \033[0m\"; read q; curl -s cht.sh/$q | less -R; done"'
tmux select-window -t $SESSION:scan

# 4. Attach to the session
tmux attach -t $SESSION
