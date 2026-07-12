#!/bin/sh
########################################################################
# File name: srcery.tmux
# Project: srcery color scheme for tmux
# Version: 3.0.0
# Copyright: Birger Johan Nordølum <me@mindtooth.no>
#
# This is the main file for the tmux color scheme.  This file loads the
# palette and theme files, and selects the status-line variant based on
# the user's @srcery_tmux_patched_font option.
#
########################################################################

CURRENT_DIR="$(cd "$(dirname "${0}")" && pwd)"

if [ "$(tmux show-option -gqv "@srcery_tmux_patched_font")" = "1" ]; then
	variant="srcery_patched.conf"
else
	variant="srcery_no_patched.conf"
fi

# Source everything in one client invocation so the theme applies
# atomically, without an intermediate repaint of the default statusline.
tmux source-file \
	"$CURRENT_DIR/themes/palette.conf" \
	"$CURRENT_DIR/themes/srcery.conf" \
	"$CURRENT_DIR/themes/$variant"

# vim: filetype=sh:formatoptions-=t:
