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

alias gpa='git push git@alphajr:kodefarmers/eventmate.git'
alias gpy='git push git@yakeen:kodefarmers/eventmate.git'

# alias pmdeploy="rsync -e 'ssh -p 18765' -avz --exclude={'.env','.env.example','index.php','public','.git','storage'} ./ u1904-v2qfrxmtuge9@ssh.pokharamarathon.org:www/pm3.pokharamarathon.org/public_html/dashboard"
alias pmdeploy="rsync -e 'ssh -p 18765' -avz --exclude={'.env','.env.example','index.php','public','.git','storage'} ./ u1904-v2qfrxmtuge9@ssh.pokharamarathon.org:www/test.pokharamarathon.org/public_html/dashboard"
alias pm='ssh -p 18765 u1904-v2qfrxmtuge9@ssh.pokharamarathon.org'
alias pmfinaldeploy="rsync -e 'ssh -p 18765' -avz --exclude={'.env','.env.example','index.php','public','.git','storage'} ./ u1904-v2qfrxmtuge9@ssh.pokharamarathon.org:www/app.pokharamarathon.org/public_html/dashboard"

# zsh-vi-mode
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
ZVM_INSERT_MODE_CURSOR=$ZVM_CURSOR_BLOCK
ZVM_NORMAL_MODE_CURSOR=$ZVM_CURSOR_BLINKING_BLOCK

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

export PATH="${PATH}:/Users/alphajr/Library/Python/3.10/bin"
alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'

eval "$(starship init zsh)"
test -e /Users/alphajr/.iterm2_shell_integration.zsh && source /Users/alphajr/.iterm2_shell_integration.zsh || true

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export PATH="${PATH}:/Users/alphajr/.local/bin"

# Herd injected PHP binary.
export PATH="/Users/alphajr/Library/Application Support/Herd/bin/":$PATH

# Herd injected PHP 8.2 configuration.
export HERD_PHP_82_INI_SCAN_DIR="/Users/alphajr/Library/Application Support/Herd/config/php/82/"
