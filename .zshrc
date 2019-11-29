#
# User configuration sourced by interactive shells
#

# Define zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

source ~/.antigen.zsh

# export TERM="tmux-256color"
export TERM="xterm-256color"

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle archlinux
antigen bundle bower
antigen bundle gem
antigen bundle node
antigen bundle npm
antigen bundle pyenv
antigen bundle virtualenvwrapper
antigen bundle python
antigen bundle ruby
antigen bundle rbenv
antigen bundle systemd
antigen bundle tmux
antigen bundle docker
antigen bundle celery
antigen bundle composer
antigen bundle django
antigen bundle gpg-agent
antigen bundle ng
antigen bundle yarn
antigen bundle arialdomartini/oh-my-git
# antigen bundle mafredri/zsh-async
# antigen bundle colored-man-page

# Theme
# antigen theme bira


export PATH="$PATH:$HOME/.cabal/bin"

# Virtual env wrapper
export WORKON_HOME=/home/sam/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Auto suggestion
antigen bundle zsh-users/zsh-autosuggestions

# if you do a 'rm *', Zsh will give you a sanity check!
setopt RM_STAR_WAIT

# make sure that if a program wants you to edit
# text, that Vim is going to be there for you
export EDITOR=/usr/bin/nvim
export FCEDITOR=$EDITOR
export SYSTEMD_EDITOR=$EDITOR
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR

# XDG config
XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG_HOME

# Telemetry
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# Compression lvl
export XZ_OPT=-9
export GZIP_OPT=-9

# pbcopy alias
alias -g pbcopy='xsel --clipboard --input'
alias -g pbpaste='xsel --clipboard --output'

# youtube-dl
alias -g youtube-dl='youtube-dl --proxy http://127.0.0.1:8118'

# Usefull commands
alias -g weather='curl http://wttr.in/tehran'
alias -g moon='curl wttr.in/Moon'
alias -g ipinfo='curl ipinfo.io'
alias -g ping='prettyping'

# Color settings
export LESSOPEN="| /usr/bin/source-highlight-esc.sh %s"
export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
alias -g grep='grep --color=auto'
alias -g diff='diff --color=auto'
alias -g dmesg='dmesg --color=always'

# Dotfiles management
alias dotfile='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# ls
# alias -g ls="$(lsd)"
# alias -g l="$(lsd -l)"
# alias -g la="$(lsd -al)"
# alias -g lla="$(lsd -a)"
# alias -g lt="$(lsd --tree)"

# man() {
    # LESS_TERMCAP_md=$'\e[01;31m' \
    # LESS_TERMCAP_me=$'\e[0m' \
    # LESS_TERMCAP_se=$'\e[0m' \
    # LESS_TERMCAP_so=$'\e[01;44;33m' \
    # LESS_TERMCAP_ue=$'\e[0m' \
    # LESS_TERMCAP_us=$'\e[01;32m' \
    # command man "$@"
# }
export PATH="/lib/cw:$PATH"

# phpctags
export PATH=~/Workspace/PHP:$PATH

# ASP
export DOTNET_SKIP_FIRST_TIME_EXPERIENCE=true

# Flutter
export PATH="$PATH:$HOME/First/Apps/flutter/bin"

# Ctags
export PATH=/usr/bin/ctags:$PATH

# urlscan browser
export BROWSER="firefox"

# Local apps
export PATH="${PATH}:${HOME}/.local/bin/"

# export LIB="/usr/lib"
# export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${HOME}/Apps/HON/source/libs-x86_64"
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/cuda/extras/CUPTI/lib64

# Ruby
export PATH="$HOME/.gem/ruby/2.5.0/bin/:$PATH"

# Executable apps
export PATH="$HOME/Apps/bin/:$PATH"

# Composer
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

#Rust path to execute
export PATH="$HOME/.cargo/bin:$PATH"

# NPM global path
export PATH=~/.npm_modules/bin:$PATH
PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules

# Default shell
# export SHELL=/usr/bin/bash

# Java home
export JAVA_HOME=/usr/lib/jvm/default
export PATH=$JAVA_HOME/bin:$PATH

# Maven
export MAVEN_HOME=/opt/maven
export PATH=$MAVEN_HOME/bin:$PATH

# Android path
export ANDROID_HOME=$HOME/First/Apps/Android/Sdk
export ANDROID_SDK_ROOT=$HOME/First/Apps/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export ANDROID_AVD_HOME=$HOME/.android/avd

# Having tmux load by default when a zsh terminal is launched
# if [ "$TMUX" = "" ]; then tmux; fi
# export PATH=$PATH:/usr/bin/vagrant

# Set locale
export LANG=en_US.UTF-8
# export LC_CTYPE=en_US.UTF-8
export LC_ALL=

# Make package configuration
export PATH="/usr/lib/ccache/bin/:$PATH"
export MAKEFLAGS="-j9 -l8"

# Dotnet
export PATH="$PATH:/home/sam/.dotnet/tools"

# Dart
export PATH="$PATH":"$HOME/.pub-cache/bin"

# Yarn
export PATH="$PATH:`yarn global bin`"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
# export PATH="$(pyenv root)/shims:/usr/local/bin:/usr/bin:/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi
if [[ -n $VIRTUAL_ENV && -e "${VIRTUAL_ENV}/bin/activate" ]]; then
  source "${VIRTUAL_ENV}/bin/activate"
fi

# Gtags (global)
export GTAGSLABEL=pygments

# RBENV
export RBENV_ROOT="$HOME/.rbenv"
export PATH="$RBENV_ROOT/bin:$PATH"
eval "$(rbenv init -)"

# VirtualGL reads back
VGL_READBACK=pbo

# FZF (command-line fuzzy finder)
export FZF_TMUX=1

source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh
source /home/sam/.fzf.zsh

bindkey -e

zle -N fdd
bindkey -M emacs "^F^T" fdd

zle -N fda
bindkey -M emacs "^F^G" fda

zle -N fdr
bindkey -M emacs "^F^R" fdr

zle -N cdf
bindkey -M emacs "^F^W" cdf

zle -N v
bindkey -M emacs "^F^V" v

zle -N fkill
bindkey -M emacs "^K" fkill

zle -N fshow_preview
bindkey -M emacs "^G^G" fshow_preview

zle -N fcoc_preview
bindkey -M emacs "^G^T" fcoc_preview

zle -N fgst
bindkey -M emacs "^G^F" fgst

zle -N fzf-file-widget
bindkey -M emacs "^F^F" fzf-file-widget

zle -N fzf-history-widget
bindkey -M emacs "^Q" fzf-history-widget

zle -N emoji::cli
bindkey -M emacs "^S" emoji::cli

zle -N fzf-completion
bindkey -M emacs "^I" fzf-completion

zle -N fzf-cd-widget
bindkey -M emacs "^[c" fzf-cd-widget

zle -N fzf-locate-widget
bindkey -M emacs "^[i" fzf-locate-widget

# Privoxy
# export http_proxy="http://localhost:8118"

# Zprezto
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/sam/.sdkman"
[[ -s "/home/sam/.sdkman/bin/sdkman-init.sh" ]] && source "/home/sam/.sdkman/bin/sdkman-init.sh"

###-tns-completion-start-###
if [ -f /home/sam/.tnsrc ]; then
    source /home/sam/.tnsrc
fi
###-tns-completion-end-###


# ZSH TMUX settings
# ZSH_TMUX_AUTOSTART='true'
[[ -r "/usr/share/z/z.sh"  ]] && source /usr/share/z/z.sh
# Tell Antigen that you're done.
antigen apply

# FZF functions
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

###-tns-completion-start-###
if [ -f /home/sam/.tnsrc ]; then 
    source /home/sam/.tnsrc 
fi
###-tns-completion-end-###
source ~/.powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
