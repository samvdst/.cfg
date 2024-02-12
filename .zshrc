export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="gozilla"
HIST_STAMPS="yyyy-mm-dd"

plugins=(
  git
  zsh-autosuggestions
  zsh-vi-mode
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# sam config
export PATH="/home/sam/.fnm:$PATH"
export FZF_DEFAULT_OPTS='--height=70%'
export FZF_DEFAULT_COMMAND='rg --files'
export FZF_CTRL_T_COMMAND='rg --files --no-messages'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export RIPGREP_CONFIG_PATH="$HOME/.ripgreprc"

eval "$(zoxide init zsh)"
eval "$(fnm env --use-on-cd)"

export PATH="/home/sam/.local/bin:$PATH"

# exa
if [[ -x "$(command -v exa)" ]] then
  alias ll='exa -l --icons --group-directories-first'
  alias lla='ll -a'
fi

# git
alias gs="git status"
alias gl="git log"
alias lg="lazygit"
alias hb="gh browse"

# coding
alias c="v"
alias vim="nvim"
alias v="nvim"
alias cat="bat"

# tmux
alias t="tmux"
alias tl="tmux ls"
alias ta="tmux a -t"
alias tn="tmux new -s"

# ripgrep
alias rgf="rg --files | rg"
alias rgfu="rg -u --files | rg"
alias rgfuu="rg -uu --files | rg"
alias rgfuuu="rg -uuu --files | rg"
alias rgu="rg -u"
alias rguu="rg -uu"
alias rguuu="rg -uuu"

# dotfiles / .cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

xset r rate 350 90

source /home/sam/.config/broot/launcher/bash/br

# pnpm
export PNPM_HOME="/home/sam/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# bun completions
[ -s "/home/sam/.bun/_bun" ] && source "/home/sam/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
