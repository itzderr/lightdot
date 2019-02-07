#   1. ENVIRONMENT CONFIGURATION
#   -------------------------------

#   Prompt
#   ------------------------------------------------------------

# Enable git tab completion 
source ~/.git-completion.bash
source ~/.git-prompt.sh

# Change command prompt
export PS1="[\[\033[0;31m\]\[\033[0;36m\] \W \[\033[0m\]] \[\033[1;35m\] $(__git_ps1 " (%s)") $ \[\033[0m\]"

# Set CLICOLOR if you want Ansi Colors in iTerm2 
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

# Default Editor
export EDITOR=vim

#   Aliases
#   ------------------------------------------------------------
alias ls='ls -GFh'
alias ll='ls -lah'
alias reload='source ~/.bashrc'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ~='cd ~'
alias bp='vim ~/.bashrc'
alias vimrc='vim ~/.vimrc'
alias c='clear'
alias gitc='vim ~/.gitconfig'
alias e='$EDITOR'
alias dev='cd ~/dev'
alias grep='grep --color=auto'
alias lightsail='ssh ubuntu@52.42.93.133'

# Add g functions
source ~/.g.sh

mkdircd() {
  mkdir $1 && cd $1
}

