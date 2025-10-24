zmodload zsh/zprof

# Load autocompletion
autoload -Uz compinit

if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
	compinit;
else
	compinit -C;
fi;

zstyle ':completion:*' menu select

export ZSH="$HOME/.local/share/sheldon/repos/github.com/ohmyzsh/ohmyzsh"

eval "$(sheldon source)"

# Various alias
alias ls=eza
alias tmux=zellij
alias cat="bat -p --paging never"
alias n=nvim
alias vimdiff="nvim -d"
alias h=helix
alias md=mkdir
alias ssh="kitten ssh"

eval "$(zoxide init zsh)"

# fastfetch --kitty-icat $HOME/dotfiles/ricing/goku-sunset.gif --logo-width 40
fastfetch
eval "$(starship init zsh)"
# zprof
