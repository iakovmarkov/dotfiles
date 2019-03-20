plugins=(git extract ssh-agent systemd zsh-completions npm command-time)
export ZSH=/usr/share/oh-my-zsh/
zstyle :omz:plugins:ssh-agent agent-forwarding on

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
export EDITOR='nano'

setopt CORRECT
setopt nosharehistory

[ -f ~/.profile ] && source ~/.profile

autoload -U promptinit
promptinit
prompt pure
