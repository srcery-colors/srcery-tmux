# tmux-srcery

![tmux-srcery screenshot](assets/screenshot.png)

Attempt at a [srcery](https://github.com/roosta/vim-srcery/) theme for tmux.


### Features
* Supports powerline glyphs via patched fonts.
* [tmux-prefix-highlight](https://github.com/tmux-plugins/tmux-prefix-highlight).  _(Be sure to load this after you have loaded your theme either via `run-shell` or [TMP](https://github.com/tmux-plugins/tpm).)_

## Installation
### Manually (Using `git` & `run-shell`)
```shell
git clone https://github.com/MindTooth/tmux-srcery/ ~/.tmux/themes/tmux-srcery
```
Then add the folling to your `.tmux.conf` file:
```tmux
run -b ~/.tmux/themes/tmux-srcery/srcery.tmux
```
### [TMP](https://github.com/tmux-plugins/tpm)
Add following to your plugin list:
```tmux
set -g @plugin 'MindTooth/tmux-srcery'
```

## Options

### Powerline Fonts
Enable powerline glyps in statusline. _(default = 0)_
```tmux
set -g @srcery_tmux_patched_font '1'
```
