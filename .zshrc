# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

REPORTTIME=10

export SEND_256_COLORS_TO_REMOTE=1
export EDITOR=vim
export GREP_OPTIONS='--color=auto'
export PATH=/home/mark/usr/bin:$PATH
export PATH=$PATH:/home/mark/.config/bspwm/panel
#export NVIM_TUI_ENABLE_TRUE_COLOR=1

bindkey -v

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="flazz"
ZSH_THEME="afowler"
#ZSH_THEME="gitsome"
#ZSH_THEME="gentoo"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
#DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-prompt yum composer laravel4 autojump zsh-syntax-highlighting bower tmux systemd npm postgres rsync ssh-agent bower sudo vagrant)

source $ZSH/oh-my-zsh.sh

autoload -U colors ; colors 
zstyle -e ':completion:*' list-colors 'thingy=${PREFIX##*/} reply=( "=(#b)($thingy)(?)*=00=$color[green]=$color[bg-green]" )'
#zstyle ':completion:*' menu select=2 eval "$(dircolors -b)"
#zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
#zstyle ':completion:*' list-colors ''

## Use modern completion system
#autoload -Uz compinit
#compinit
#
#zstyle ':completion:*' auto-description 'specify: %d'
#zstyle ':completion:*' completer _expand _complete _correct _approximate
#zstyle ':completion:*' format 'Completing %d'
#zstyle ':completion:*' group-name ''
#zstyle ':completion:*' menu select=2 eval "$(dircolors -b)"
#zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
#zstyle ':completion:*' list-colors ''
#zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
#zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
#zstyle ':completion:*' menu select=long
#zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
#zstyle ':completion:*' use-compctl false
#zstyle ':completion:*' verbose true
#
#zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
#zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

#autoload predict-on
#predict-off

_herbstclient() {
        compadd "$@" $(herbstclient -q complete "$((CURRENT-2))" "${(@)words[@]:1}")
}

compdef _herbstclient herbstclient

# Customize to your needs...

# aliases
alias cp='cp -v'
alias ls='ls -F --color=auto'
alias ll='ls -lFh --color=auto'
alias la='ls -alFh --color=auto'
alias l='ls -sh --color=auto'
alias mv='mv -v'
alias rm='rm -v'
alias g='git'
alias jo='jobs'
alias h='history'
alias top='top -c'
alias df='df -h'
alias ssh='TERM=xterm-256color ssh'
#alias vim='gvim -v'
alias bower='noglob bower'
alias e='ember'

alias -g pj='json | pygmentize -l json | less'
alias -g hc='herbstclient'
alias gitrm='git rm $(git ls-files --deleted)'
alias json='json_reformat'
#alias myproctotal='ps -u "$(echo $(w -h | cut -d i\' \' -f1 | sort -u))" o user= | sort | uniq -c | sort -rn'

man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}

export PAGER="less"

# turn on spelling correction
setopt correct
# don't save duplicates in command history
setopt histignoredups
# don't allow accidental file over-writes
setopt noclobber

# Always pushd when changing directory
setopt auto_pushd
# Have pushd with no arguments act like `pushd $HOME'.
setopt PUSHD_TO_HOME
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

## Load zsh-syntax-highlighting.
#source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#
## Load zsh-autosuggestions.
#source ~/.zsh/zsh-autosuggestions/autosuggestions.zsh
#
## Enable autosuggestions automatically.
#zle-line-init() {
#    zle autosuggest-start
#}
#zle -N zle-line-init

export FZF_DEFAULT_OPTS="--bind esc:cancel"
