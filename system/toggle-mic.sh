#!/bin/sh

killall notify-osd

STATUS=$(amixer get Capture | grep -c '\[on\]')

if [ "$STATUS" = "0" ]; then
	MSG_TO_SHOW="Microphone has been enabled."
else
	MSG_TO_SHOW="Microphone has been disabled."
fi

amixer set Capture toggle && notify-send "$MSG_TO_SHOW"
