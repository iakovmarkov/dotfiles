export SSH_ASKPASS=/usr/lib/seahorse/ssh-askpass
plugins=(git extract ssh-agent systemd zsh-completions npm command-time)
zstyle :omz:plugins:ssh-agent agent-forwarding on
export ZSH=/usr/share/oh-my-zsh/
export ZSH_CUSTOM=/home/markov/.oh-my-zsh/custom/

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
export EDITOR='nano'

setopt CORRECT
setopt nosharehistory

[ -f ~/.profile ] && source ~/.profile

autoload -U promptinit
promptinit
prompt pure
