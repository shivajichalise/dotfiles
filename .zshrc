# ALIASES
alias vim='nvim'

# Changing "ls" to "exa"
alias ls='eza -l --color=always --group-directories-first'    # my preferred listing
alias la='eza -al --color=always --group-directories-first'   # all files and dirs

# NAVIGATION
alias ..='cd ..' 
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# EXIT
alias :q="exit"

# Git bare (for config files)
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

# Tmux aliases
alias mux=tmuxinator

# mkdir: create parent directories
alias mkdir="mkdir -pv"

# zsh-vi-mode
# Set ZVM_INIT_MODE before sourcing zsh-vi-mode plugin
ZVM_INIT_MODE=sourcing
if [[ -e $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh ]]; then
    source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
    ZVM_INSERT_MODE_CURSOR=$ZVM_CURSOR_BLOCK
    ZVM_NORMAL_MODE_CURSOR=$ZVM_CURSOR_BLINKING_BLOCK
fi

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Python path
export PATH="${PATH}:/Users/alphajr/Library/Python/3.10/bin"

# Starship prompt
eval "$(starship init zsh)"

# iTerm2 shell integration
test -e /Users/alphajr/.iterm2_shell_integration.zsh && source /Users/alphajr/.iterm2_shell_integration.zsh || true

# Additional path
export PATH="${PATH}:/Users/alphajr/.local/bin"
export PATH="${PATH}:/Users/alphajr/.scripts"

# Postgresql
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"

# Keybindings
bindkey -s ^f "tmux-sessionizer\n"
bindkey -s ^g "ch.sh\n"

export PATH="/opt/homebrew/opt/php@8.3/sbin:$PATH"
export PATH="/opt/homebrew/opt/php@7.4/bin:$PATH"
export PATH="/opt/homebrew/opt/php@8.1/bin:$PATH"

# Herd injected PHP 8.1 configuration.
export HERD_PHP_81_INI_SCAN_DIR="/Users/alphajr/Library/Application Support/Herd/config/php/81/"

# Herd injected PHP 8.4 configuration.
export HERD_PHP_84_INI_SCAN_DIR="/Users/alphajr/Library/Application Support/Herd/config/php/84/"

# Herd injected PHP binary.
export PATH="/Users/alphajr/Library/Application Support/Herd/bin/":$PATH


# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/alphajr/Library/Application Support/Herd/config/php/83/"


# Herd injected PHP 8.2 configuration.
export HERD_PHP_82_INI_SCAN_DIR="/Users/alphajr/Library/Application Support/Herd/config/php/82/"


# Herd injected PHP 7.4 configuration.
export HERD_PHP_74_INI_SCAN_DIR="/Users/alphajr/Library/Application Support/Herd/config/php/74/"

# Goenv setup
eval "$(goenv init -)"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"

# React Native Setup
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
