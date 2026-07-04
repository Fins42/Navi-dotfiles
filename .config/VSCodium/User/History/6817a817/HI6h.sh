#!/bin/bash

STATUS=$(playerctl status 2>/dev/null)
if [ $? -ne 0 ]; then
    echo '{"text": "", "class": "no-player", "tooltip": "No media players running"}'
    exit 0
fi

ARTIST=$(playerctl metadata artist 2>/dev/null)
TITLE=$(playerctl metadata title 2>/dev/null)

if [ "$STATUS" == "Playing" ]; then
    ICON=""
    CLASS="playing"
else
    ICON="⏸"
    CLASS="paused"
fi

if [ -n "$ARTIST" ] && [ -n "$TITLE" ]; then
    DISPLAY="$ARTIST - $TITLE"
    if [ ${#DISPLAY} -gt 40 ]; then
        DISPLAY="${DISPLAY:0:37}..."
    fi
else
    DISPLAY="$TITLE"
fi

echo "{\"text\": \"$ICON $DISPLAY\", \"class\": \"$CLASS\", \"tooltip\": \"$ARTIST - $TITLE\"}"