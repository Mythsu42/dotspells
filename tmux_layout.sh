#!/usr/bin/env zsh

figlet -f slant "Mothsuro" | lolcat
echo "bienvenue, maitre du terminal."
sleep 1

SESSION="basic"
tmux has-session -t $SESSION 2>/dev/null
if [[ $? != 0 ]]; then
	tmux new-session -d -s $SESSION
	tmux send-keys -t $SESSION:0.0 'figlet -f slant "Mothsuro" | lolcat' C-m
	tmux split-window -h -t $SESSION
	tmux send-keys -t $SESSION:0.1 'htop' C-m
	tmux split-window -v -t $SESSION:0.1
	tmux send-keys -t $SESSION:0.2
fi
tmux attach -t $SESSION
