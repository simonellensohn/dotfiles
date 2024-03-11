# Load dotfiles binaries
export PATH="$DOTFILES/bin:$PATH"

# Use project specific binaries before global ones
export PATH="node_modules/.bin:vendor/bin:$PATH"

# Make sure coreutils are loaded before system commands
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

export PATH=/Users/Shared/DBngin/mysql/8.0.33/bin:$PATH
