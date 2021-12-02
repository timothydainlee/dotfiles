export PATH="/usr/local/sbin:$PATH"

# Theme setting
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
source $ZSH/oh-my-zsh.sh

# Remove user name
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

# nvim and tmux
alias vi="nvim -u $HOME/dotfiles/.config/nvim/init.vim"
alias tmux="tmux -2 -f $HOME/dotfiles/.config/tmux/.tmux.conf"

