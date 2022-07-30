# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate _prefix
zstyle ':completion:*' completions 1
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' glob 1
zstyle ':completion:*' ignore-parents pwd ..
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' '+r:|[._-]=* r:|=*'
zstyle ':completion:*' max-errors 1
zstyle ':completion:*' prompt 'Found following approximate corrections with %e errors:'
zstyle ':completion:*' substitute 1
zstyle :compinstall filename '/home/skombi/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# History
HISTFILE=~/.zsh_history
HISTSIZE=10500
SAVEHIST=10000
setopt share_history extended_history hist_expire_dups_first hist_ignore_space hist_verify

# Options
setopt auto_cd auto_pushd chase_links 
setopt auto_list auto_menu extended_glob

# Key bindings
bindkey -v
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search
bindkey '^R' history-incremental-pattern-search-backward
bindkey '^P' push-line-or-edit

# Directory aliases
setopt auto_name_dirs
media=/var/run/media/$USER

# Command aliases
alias l="ls -F --color"
alias ll="ls -AlF --color"

# Prompt
setopt prompt_subst # necessary
source ~/.dotfiles/nostow/agnoster-zsh-theme/agnoster.zsh-theme

# General environment variables
export VISUAL=vim

# SSH Agent
SSH_AGENT="/usr/bin/ssh-agent"
if [[ -z $SSH_AGENT_PID && -e $SSH_AGENT ]]; then
    eval `$SSH_AGENT` 1>/dev/null
fi
