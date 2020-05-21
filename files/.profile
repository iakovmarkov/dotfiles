alias ll="ls --color=auto -la"
alias ls="ls --color=auto -la"
alias grep="grep --color=always"
alias httpserver="python3 -m http.server"
alias https="python3 -m http.server"
alias chrome="google-chrome-stable"
alias tmux="TERM=xterm-256color tmux"
alias bt="bluetoothctl"
alias redshift="redshift -l 50.075538:14.437800"

export DFM_DIR=/home/markov/Projects/dotfiles
export NOMAD_ADDR=http://nomad.atc:4646
export DRONE_SERVER=https://drone.atc.services
export EDITOR=nano
export PATH=~/.local/bin/:$PATH

source ~/.secrets

DEV=$(xinput list | grep TouchPad | cut --fields=2 | cut -d = -f 2)
#ROP=$(xinput list-props $DEV | grep "Disable While Typing Enabled (" | cut -d '(' -f 2 | cut -d ')' -f 1)
xinput set-prop $DEV 331 0
