# srcery-tmux
Attempt at a srcery theme for tmux.  It has support for patched fonts for glyphs in the statusbar.

Supports [tmux-prefix-highlight](https://github.com/tmux-plugins/tmux-prefix-highlight).  Be sure to load this after you have loaded your theme either via `run-shell` or [TMP](https://github.com/tmux-plugins/tpm).

## srcery family
https://github.com/roosta/contrib-srcery/

https://github.com/roosta/vim-srcery/

## Install via [TMP](https://github.com/tmux-plugins/tpm)
Add following to your plugin list
```tmux
set -g @plugin 'MindTooth/tmux-srcery'
```

## Options

### Powerline Fonts
Enable powerline glyps in statusline. _(default = 0)_
```tmux
set -g @srcery_tmux_patched_font '1'
```
