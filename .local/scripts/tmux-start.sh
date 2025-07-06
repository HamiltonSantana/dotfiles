#!/bin/bash

session=$1

tmux new-session -d -s $session -c $2

window=1
#tmux new-window -t $session:$window -n 'Editor'
tmux rename-window -t $session:$window 'Editor'

#if [[ $1 = Front ]]
#then
#    tmux send-keys -t $session:$window 'cd $PROJECT_ROOT/ItemBanking/itembanking-front/new-structure' C-m
#elif [[ $1 = Back ]]
#then
#    tmux send-keys -t $session:$window 'cd $PROJECT_ROOT/ItemBanking/micro-services' C-m
#else
#    tmux send-keys -t $session:$window 'cd $PROJECT_ROOT' C-m
#fi

window=2
tmux new-window -t $session:$window -n 'Console' -c $2

#if [[ $1 = Front ]]
#then
#    tmux send-keys -t $session:$window 'cd $PROJECT_ROOT/ItemBanking/itembanking-front/new-structure' C-m
#elif [[ $1 = Back ]]
#then
#    tmux send-keys -t $session:$window 'cd $PROJECT_ROOT/ItemBanking/micro-services' C-m
#else
#    tmux send-keys -t $session:$window 'cd $PROJECT_ROOT' C-m
#fi

tmux attach-session -t $session
