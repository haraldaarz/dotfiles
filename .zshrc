# Enable Powerlevel10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Preserv history
HISTSIZE=10000               #How many lines of history to keep in memory
HISTFILE=~/.zsh_history     #Where to save history to disk
SAVEHIST=10000               #Number of history entries to save to disk
#HISTDUP=erase               #Erase duplicates in the history file
setopt incappendhistory  #Immediately append to the history file, not just when a term is killed
setopt SHARE_HISTORY
#setopt appendhistory autocd extendedglob notify correctall nomatch globdots

# Auto caps
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# FZF
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# Plugins
plugins=(
  fzf-tab # to turn it on and off: toggle-fzf-tab
  zsh-autosuggestions
  fzf
  zsh-fzf-history-search
)

# Alias
alias ls="ls --color"
alias l="ls --color"
alias i3c="vim .config/i3/config"
alias exitnode="sudo tailscale set --exit-node=100.78.222.89"
