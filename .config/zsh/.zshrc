. $ZDOTDIR/.zshenv
ZSH_THEME="robbyrussell"

plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
	web-search
)
source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

source $ZDOTDIR/.zshaliases

[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
