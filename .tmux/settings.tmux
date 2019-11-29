set-option -g -q mouse on
set -g escape-time 10
bind '$' command-prompt -p "(rename-session '#S')" "rename-session '%%'"
set-option -g renumber-windows on
set -g base-index 1
set -g pane-base-index 1
set-option -g repeat-time 0
set -g default-shell /usr/bin/zsh
bind r source-file ~/.tmux.conf \; display "Reloaded!"
# quick pane cycling
unbind ^A
bind ^A select-pane -t :.+
