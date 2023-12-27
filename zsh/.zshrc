# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/davidhdz/.oh-my-zsh"
# export PATH="/usr/local/sbin:$PATH"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

alias gcc="gcc-12"

# Include Z, yo
# . ~/opt/z.sh

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# ZSH_THEME_RANDOM_CANDIDATES=("af-magic" "gnzh" "blinks" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# Syntax Highlighting Plugin
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
typeset -A ZSH_HIGHLIGHT_STYLES
# Changing command colors 
ZSH_HIGHLIGHT_STYLES[command]='fg=#f9bc60,bold'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#f9bc60,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#f9bc60,bold'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#e16162,bold'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#e16162,bold'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#94a1b2,bold'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#94a1b2,bold'
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"
PATH=/Users/davidhdz/Library/Python/3.7/bin:$PATH

export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/davidhdz/.cabal/bin:/Users/davidhdz/.ghcup/bin:/usr/local/share/dotnet:~/.dotnet/tools:/Library/Apple/usr/bin:/Library/Frameworks/Mono.framework/Versions/Current/Commands
export PATH=$PATH:$(go env GOPATH)/bin
source /Users/davidhdz/opt/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$PATH:$HOME/.ghcup/hls/1.8.0.0/bin
export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$HOME/.local/bin/scripts
export PATH=$PATH:$HOME/Documents/nand2tetris/tools
eval "$(rbenv init - zsh)"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/davidhdz/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/davidhdz/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/davidhdz/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/davidhdz/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

