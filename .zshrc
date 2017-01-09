source ~/.workrc
source ~/.localrc

# https://github.com/Yleisradio/homebrew-terraforms
if [[ -f /usr/local/share/chtf/chtf.sh ]]; then
    source "/usr/local/share/chtf/chtf.sh"
fi

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
eval "$(pyenv init -)"

# antibody zsh
source <(antibody init)
antibody bundle <<EOBUNDLES
zsh-users/zsh-history-substring-search
zsh-users/zsh-syntax-highlighting
mafredri/zsh-async
sindresorhus/pure
#jreese/zsh-titles
TBSliver/zsh-plugin-tmux-simple
EOBUNDLES

# https://github.com/nvbn/thefuck
eval "$(thefuck --alias)"

# lscolors
export CLICOLOR=1
