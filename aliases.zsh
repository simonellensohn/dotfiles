# Shortcuts
alias b="cd .."
alias cat="bat"
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias help="tldr"
alias ll="eza -al --icons=auto --hyperlink --color --group-directories-first"
alias ls="eza"
alias o="open ."
alias parrot="curl parrot.live"
alias ping="prettyping"
alias please="sudo !!"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias projects="cd $HOME/Code"
alias sites="cd $HOME/Herd"

# Laravel
alias a="herd php artisan"
alias art="herd php artisan"
alias fresh="herd php artisan migrate:fresh --seed"
alias tinker="herd php artisan tinker"
alias seed="herd php artisan db:seed"
alias serve="herd php artisan serve"
alias test="herd php artisan test"

# PHP
alias cfresh="rm -rf vendor/ composer.lock && composer i"
alias composer="herd composer"
alias php="herd php"

# JS
alias nfresh="rm -rf node_modules/ package-lock.json && npm install"
alias watch="npm run dev"

# Docker
alias dockerc="docker-compose"

# Brew
alias bup="brew update && brew upgrade && brew cleanup"
alias update="bup && composer global update"

# Git
alias gst="git status"
alias gb="git branch"
alias gc="git checkout"
alias gl="git log --oneline --decorate --color"
alias amend="git add . && git commit --amend --no-edit"
alias commit="git add . && git commit -m"
alias diff="git diff"
alias force="git push --force"
alias nuke="git clean -df && git reset --hard"
alias nah="nuke"
alias pop="git stash pop"
alias pull="git pull"
alias push="git push"
alias resolve="git add . && git commit --no-edit"
alias stash="git stash -u"
alias unstage="git restore --staged ."
alias wip="commit wip"
