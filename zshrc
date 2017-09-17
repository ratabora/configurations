HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# zsh bindings
## set vim line editing
bindkey -v
## reduce lag when switching to vim line editing
export KEYTIMEOUT=1
## search history backwards using ctrl-r
bindkey '^r' history-incremental-search-backward

function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

# default editor
export EDITOR='vim'

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"

# https://github.com/nvbn/thefuck
eval "$(thefuck --alias)"

# lscolors
export CLICOLOR=1

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi

