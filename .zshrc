# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dieter"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

## Completions
autoload -U compinit
compinit -C

## case-insensitive (all),partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

bindkey -v

function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
        RPS2=$RPS1
            zle reset-prompt
    }
zle -N zle-line-init
zle -N zle-keymap-select

alias hist='cut -f1 -d" " ~/.bash_history | sort | uniq -c | sort -nr | head -n 30'

# Default to human readable figures
alias df='df -h'
alias du='du -h'
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour
# Some shortcuts for different directory listings
alias ll='ls -l'                              # long list
alias la='ls -A'                              # all but . and ..
alias lla='ls -la'
# Git aliases
alias gc='git commit'
alias gs='git status -s'
alias ga='git add'
alias gaa='git add -A'
alias gb='git branch'
alias gh='git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
alias gl='git lg80'
alias go='git checkout '
alias gd='git diff'
alias gp='git push'
alias gpl='git pull'
alias gf='git fetch'
alias gba='git branch -a'
alias got='git checkout -t'
alias grh='git reset --hard'
alias gcl='git clean -f'
alias gst='git stash'
alias gstp='git stash pop'
alias gstl='git stash list'

alias ws='cd ~/workspace'

alias mvnce='mvn -U clean eclipse:eclipse -DdownloadSources=true'
alias mvnct='mvn clean test'

alias srv='python -m SimpleHTTPServer'

export GIT_EDITOR=vim

# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
export PATH=/usr/local/share/npm/lib/node_modules/coffee-script/bin/:$PATH

alias h='heroku'
alias hn='/usr/local/share/python/pyhn'
