#!/bin/bash

STATUS=$(playerctl status 2>/dev/null)
if [ $? -ne 0 ]; then
    echo '{"text": "", "class": "no-player", "tooltip": "No media players running"}'
    exit 0
fi

ARTIST=$(playerctl metadata artist 2>/dev/null)
TITLE=$(playerctl metadata title 2>/dev/null)

URL=$(playerctl metadata xesam:url 2>/dev/null)


if [[ "$URL" == *"youtube.com"* ]] || [[ "$URL" == *"youtu.be"* ]]; then
    DISPLAY="$TITLE"
else
    if [ -n "$ARTIST" ] && [ -n "$TITLE" ]; then
        DISPLAY="$ARTIST - $TITLE"
    else
        DISPLAY="$TITLE"
    fi
fi

# Truncate display if too long
if [ ${#DISPLAY} -gt 30 ]; then
    DISPLAY="${DISPLAY:0:27}..."
fi

if [ "$STATUS" == "Playing" ]; then
    ICON=""
    CLASS="playing"
else
    ICON="⏸"
    CLASS="paused"
fi

echo "{\"text\": \"$ICON $DISPLAY\", \"class\": \"$CLASS\", \"tooltip\": \"$ARTIST - $TITLE\"}"