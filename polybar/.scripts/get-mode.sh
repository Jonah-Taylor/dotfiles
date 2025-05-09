#!/bin/bash

if i3-msg -t get_binding_state | grep -q "resize"; then
	echo "Resizing"
elif i3-msg -t get_binding_state | grep -q "power"; then
	echo "(l) Lock  (s) Sleep  (r) Reboot  (p) Shutdown"
else
	echo ""
fi

