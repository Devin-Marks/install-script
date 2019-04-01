#!/usr/bin/env bash
tmux new-session -s \"MySession\" -d;
tmux split-window -h;
tmux split-window -v;
tmux attach-session -d

