#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

stty -ixon # Disable ctrl-s and ctrl-q
shopt -s autocd # Easy cd

alias v='nvim'
alias vi='nvim'
alias vim='nvim'

alias ls='lsd -lh'
alias la='lsd -lah'
alias l='lsd -h'

alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gb='git branch'
alias gp='git push'

alias doas='doas --'

alias cat='bat --theme=gruvbox-dark'
alias bat='bat --theme=gruvbox-dark'
alias grep='grep --color=auto'
alias b='btop --utf-force'
alias btop='btop --utf-force'

alias wlpr="$HOME/scripts/wallpaper"

alias smci="sudo make clean install"

alias py='python3'
alias py2='python2'

# PS1='[\u@\h \W]\$ '

alias snus="cmus"

eval "$(starship init bash)" # enable starship prompt

if [ "$(tty)" != "/dev/tty1" ]; then
	pfetch
fi

