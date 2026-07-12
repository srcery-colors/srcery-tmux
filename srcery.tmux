#!/bin/sh
########################################################################
# File name: srcery.tmux
# Project: srcery color scheme for tmux
# Version: 2.0.0
# Copyright: Birger Johan Nordølum <me@mindtooth.no>
#
# This is the main file for the tmux color scheme.  This file loads the
# palette and theme files, and selects the status-line variant based on
# the user's @srcery_tmux_patched_font option.
#
########################################################################

CURRENT_DIR="$(cd "$(dirname "${0}")" && pwd)"

tmux source-file "$CURRENT_DIR/themes/palette.conf"
tmux source-file "$CURRENT_DIR/themes/srcery.conf"

if [ "$(tmux show-option -gqv "@srcery_tmux_patched_font")" = "1" ]; then
	tmux source-file "$CURRENT_DIR/themes/srcery_patched.conf"
else
	tmux source-file "$CURRENT_DIR/themes/srcery_no_patched.conf"
fi

# vim: filetype=sh:formatoptions-=t:
