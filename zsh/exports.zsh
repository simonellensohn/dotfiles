export VOLTA_HOME="$HOME/.volta"

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$(brew --prefix)/opt/grep/libexec/gnubin:$PATH"
export PATH="$(brew --prefix)/bin:$(brew --prefix)/sbin:$PATH"
export PATH=~/.composer/vendor/bin:$PATH
export PATH=~/.npm-global/bin:$PATH
export PATH="$PATH:/usr/local/opt/coreutils/libexec/gnubin"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PATH:$PYENV_ROOT/bin"
export PATH="$PATH:$HOME/.fig/bin"
export PATH="$VOLTA_HOME/bin:$PATH"

eval $(thefuck --alias)
eval $(pyenv init --path)
