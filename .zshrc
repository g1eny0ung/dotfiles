# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Haskell bin
export PATH=$HOME/.local/bin:$PATH
# Sqlite3 last version
export PATH=/usr/local/opt/sqlite/bin:$PATH
# Python3 default
export PATH=/usr/local/opt/python/libexec/bin:$PATH
# Ruby default
export PATH=/usr/local/opt/ruby/bin:$PATH
# Flutter
export PATH=$HOME/flutter/bin:$PATH
# For crystal
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/opt/openssl/lib/pkgconfig

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="wedisagree"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=10

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$HOME/.custom-zsh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git mercurial z zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# neovim
alias vi="nvim"
alias vim="nvim"
# lantern proxy
alias goproxy="export http_proxy=http://127.0.0.1:50117 https_proxy=http://127.0.0.1:50117"
alias disproxy="unset http_proxy https_proxy"
# taobao npm
alias cnpm="npm --registry=https://registry.npm.taobao.org \
		--cache=$HOME/.npm/.cache/cnpm \
		--disturl=https://npm.taobao.org/dist \
		--userconfig=$HOME/.cnpmrc"
# homebrew
alias brew_UG="brew update && brew upgrade && brew cask upgrade"
# simple http server
alias py_HTTP_Server="python3 -m http.server"
alias php_HTTP_Server="php -S 0.0.0.0:8000"
# zsh
alias source_zshrc="source ~/.zshrc"
# ghci
alias ghci="stack ghci"
# nginx
alias reset_nginx_conf="cp /usr/local/etc/nginx/nginx.conf.default /usr/local/etc/nginx/nginx.conf"
# swift
alias swift="PATH=/usr/bin:$PATH swift"
# git
alias git="LANG=\"en_US.UTF-8\" git"

export GPG_TTY=$(tty)

export ELECTRON_MIRROR="https://npm.taobao.org/mirrors/electron/"
export SASS_BINARY_SITE="https://npm.taobao.org/mirrors/node-sass"
export PUPPETEER_DOWNLOAD_HOST="https://npm.taobao.org/mirrors"

# bash_completion_script
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
eval "$(stack --bash-completion-script stack)"

# pyenv and pyenv-virtualenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[[ -r $NVM_DIR/bash_completion ]] && \. $NVM_DIR/bash_completion
