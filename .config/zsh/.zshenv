export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$ZSH/custom"
export NVM_DIR="$XDG_CONFIG_HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
. $HOME/.cargo/env
export BUN_INSTALL="$HOME/.bun"

add_to_path() {
	export PATH="$PATH:$1"
}

add_to_path "$HOME/zig"
add_to_path "$HOME/.deno/bin"
add_to_path "$BUN_INSTALL/bin"
add_to_path "/usr/local/go/bin"
add_to_path "$HOME/.nimble/bin"
