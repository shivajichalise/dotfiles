# Exports
export EDITOR=nvim

# ALIASES
alias vim='nvim'

# Changing "ls" to "exa"
alias ls='exa -l --color=always --group-directories-first'    # my preferred listing
alias la='exa -al --color=always --group-directories-first'   # all files and dirs

# NAVIGATION
alias ..='cd ..' 
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# EXIT
alias :q="exit"

alias mux=tmuxinator

alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

eval "$(starship init zsh)"
test -e /Users/alphajr/.iterm2_shell_integration.zsh && source /Users/alphajr/.iterm2_shell_integration.zsh || true
