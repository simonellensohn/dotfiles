export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=~/.composer/vendor/bin:$PATH
export PATH=~/.npm-global/bin:$PATH

eval "`fnm env --multi`"
eval $(thefuck --alias)
