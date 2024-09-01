#p10k 
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# aliases
alias ls='lsd -lh'
alias la='lsd -lah'
alias l='lsd -h'

alias cat='bat'

alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gb='git branch'
alias gpush='git pull'
alias gpull='git pull'

alias grep='grep --color=auto'
alias btop='btop --utf-force'

alias smci="sudo make clean install"

alias py='python3'
alias py3='python3'
alias py2='python2'

alias b='btop --utf-force'
alias news="newsboat"

alias nv='nvim'
alias vi='nvim'
alias v='nvim'
alias vim='nvim'
alias n='nvim'

alias zed="zeditor"
alias q="exit"

# cd/zoxide
setopt autocd

eval "$(zoxide init zsh)"
alias cd="z"

# fzf
source <(fzf --zsh)
source /usr/share/zsh/plugins/fzf-tab-git/fzf-tab.zsh
# zstyle ':fzf-tab:complete:*:*' fzf-preview 'ls --color $realpath'
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS' 
	--color=fg:#c0caf5,hl:#bb9af7
	--color=fg+:#c0caf5,hl+:#7dcfff
	--color=info:#7aa2f7,prompt:#7dcfff,pointer:#7dcfff 
	--color=marker:#9ece6a,spinner:#9ece6a,header:#9ece6a'
# fzf tldr
zstyle ':fzf-tab:complete:tldr:argument-1' fzf-preview 'tldr --color always $word'
zstyle ':fzf-tab:complete:*:options' fzf-preview 

# history
source /usr/share/zsh/plugins/zsh-fzf-history-search/zsh-fzf-history-search.zsh

HISTFILE=~/.cache/.zsh_history
HISTSIZE=5000
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_find_no_dups

# vi mode
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
ZVM_LINE_INIT_MODE=$ZVM_MODE_INSERT

# Retrieve default cursor styles
local ncur=$(zvm_cursor_style $ZVM_NORMAL_MODE_CURSOR)
local icur=$(zvm_cursor_style $ZVM_INSERT_MODE_CURSOR)
ZVM_NORMAL_MODE_CURSOR=$ncur'\e\e]12;#c0caf5\a'

# vi mode tokio night colors
ZVM_VI_HIGHLIGHT_FOREGROUND=#24283b 
ZVM_VI_HIGHLIGHT_BACKGROUND=#a9b1d6
ZVM_VI_HIGHLIGHT_EXTRASTYLE=bold

# completions
autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu no

setopt correct

# autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#565f89"

# syntax-highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS+=(main brackets pattern cursor)

[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

