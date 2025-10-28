# zmodload zsh/zprof

# For uv tools
export PATH="$HOME/.local/bin:$PATH"

# Dotbins
source $HOME/.dotbins/shell/zsh.sh

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
alias n=nvim
alias vimdiff="nvim -d"
# alias md=mkdir
alias ssh="kitten ssh"

# fastfetch --kitty-icat $HOME/dotfiles/ricing/goku-sunset.gif --logo-width 40
fastfetch
# zprof
