source $(brew --prefix)/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle alexrochas/zsh-extract
antigen bundle alexrochas/zsh-vim-crtl-z
antigen bundle alexrochas/zsh-git-semantic-commits
antigen bundle alexrochas/zsh-path-environment-explorer
antigen bundle djui/alias-tips
antigen bundle paulirish/git-open
antigen bundle git-extras
antigen bundle git-flow

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle marzocchi/zsh-notify
antigen bundle b4b4r07/emoji-cli
antigen bundle wbingli/zsh-wakatime

# add prompt theme
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

# Tell antigen that you're done.
antigen apply
