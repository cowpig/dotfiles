#!/bin/bash
if [ -n "${DISPLAY+x}" ]; then
    xmodmap -e "keycode 66 = End"
    xmodmap -e "clear Lock"
fi
