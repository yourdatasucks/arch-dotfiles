#!/bin/bash

if hyprctl clients | grep -q "class: Cursor"; then
    hyprctl dispatch workspace 3
else
    cursor &
fi

