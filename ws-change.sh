#!/bin/bash

TOTAL_WORKSPACES=$(xdotool get_num_desktops)
CURRENT_WORKSPACE_INDEX=$(xdotool get_desktop)
CURRENT_WORKSPACE=$(($CURRENT_WORKSPACE_INDEX + 1))

if [[ $CURRENT_WORKSPACE -ge $TOTAL_WORKSPACES ]]
then
    xdotool set_desktop 0
else
    xdotool set_desktop $CURRENT_WORKSPACE
fi
