# Add ssh key
[[ -z $(ssh-add -L | grep $HOME/.ssh/id_rsa) ]] && ssh-add $HOME/.ssh/id_rsa

# Antigen
[[ -f ~/.dotfiles/zsh/antigen.zsh ]] && source ~/.dotfiles/zsh/antigen.zsh

# Aliases
[[ -f ~/.dotfiles/zsh/aliases.zsh ]] && source ~/.dotfiles/zsh/aliases.zsh

# Function
[[ -f ~/.dotfiles/zsh/functions.zsh ]] && source ~/.dotfiles/zsh/functions.zsh

# Exports
[[ -f ~/.dotfiles/zsh/exports.zsh ]] && source ~/.dotfiles/zsh/exports.zsh

# Theme
# [[ -f ~/.dotfiles/zsh/theme.zsh ]] && source ~/.dotfiles/zsh/theme.zsh

# Enable fzf key bindings and fuzzy completion
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Enable z
[ -f ~/.dotfiles/zsh/z.sh ] && . ~/.dotfiles/zsh/z.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

