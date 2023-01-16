#!/bin/bash

session=$1

tmux new-session -d -s $session

window=0

tmux rename-window -t $session:$window 'Git'
#tmux send-keys -t $session:$window 'git fetch --prune --all' C-m
if [[ $1 = Front ]]
then
    tmux send-keys -t $session:$window 'cd $PROJECT_ROOT/ItemBanking/itembanking-front/new-structure; git fetch --all' C-m
elif [[ $1 = Back ]]
then
    tmux send-keys -t $session:$window 'cd $PROJECT_ROOT/ItemBanking/micro-services; git fetch --all' C-m
else
    tmux send-keys -t $session:$window 'cd $PROJECT_ROOT; git fetch --all' C-m
fi

window=1
tmux new-window -t $session:$window -n 'Editor'

if [[ $1 = Front ]]
then
    tmux send-keys -t $session:$window 'cd $PROJECT_ROOT/ItemBanking/itembanking-front/new-structure' C-m
elif [[ $1 = Back ]]
then
    tmux send-keys -t $session:$window 'cd $PROJECT_ROOT/ItemBanking/micro-services' C-m
else
    tmux send-keys -t $session:$window 'cd $PROJECT_ROOT' C-m
fi

window=2
tmux new-window -t $session:$window -n 'Console'

if [[ $1 = Front ]]
then
    tmux send-keys -t $session:$window 'cd $PROJECT_ROOT/ItemBanking/itembanking-front/new-structure' C-m
elif [[ $1 = Back ]]
then
    tmux send-keys -t $session:$window 'cd $PROJECT_ROOT/ItemBanking/micro-services' C-m
else
    tmux send-keys -t $session:$window 'cd $PROJECT_ROOT' C-m
fi

tmux attach-session -t $session
