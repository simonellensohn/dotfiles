# Fig pre block. Keep at the top of this file.
export PATH="${PATH}:${HOME}/.local/bin"
eval "$(fig init zsh pre)"

# Antigen
[[ -f ~/.dotfiles/zsh/antigen.zsh ]] && source ~/.dotfiles/zsh/antigen.zsh

# Aliases
[[ -f ~/.dotfiles/zsh/aliases.zsh ]] && source ~/.dotfiles/zsh/aliases.zsh

# Function
[[ -f ~/.dotfiles/zsh/functions.zsh ]] && source ~/.dotfiles/zsh/functions.zsh

# Exports
[[ -f ~/.dotfiles/zsh/exports.zsh ]] && source ~/.dotfiles/zsh/exports.zsh

# Enable fzf key bindings and fuzzy completion
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Enable z
[ -f ~/.dotfiles/zsh/z.sh ] && . ~/.dotfiles/zsh/z.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Fig post block. Keep at the bottom of this file.
eval "$(fig init zsh post)"

