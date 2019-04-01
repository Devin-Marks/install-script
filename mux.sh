#!/usr/bin/env bash
tmux new-session -s "MuxSession" -d;
tmux split-window -h;
tmux split-window -v;
tmux attach-session -d

