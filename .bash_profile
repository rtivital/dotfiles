update-dot-files() {
  curl -o- https://raw.githubusercontent.com/rtivital/dotfiles/master/.bash_profile > ~/.bash_profile
  curl -o- https://raw.githubusercontent.com/rtivital/dotfiles/master/.bashrc > ~/.bashrc
}

alias brewup='brew update; brew upgrade; brew cleanup; brew doctor'

alias t='touch'
alias ..='cd ..'
alias ...='cd ../..'
alias cd..='cd ..'
alias ls='ls -af'

mcd() { mkdir -p "$1" && cd "$1"; }
port() { lsof -i tcp:$1; }
b64() { openssl base64 -in "$1" -out "$1.b64"; }
trash() { command mv "$@" ~/.Trash; }

# Git alias
alias git='LANG=en_US git'
alias gs='git status'
alias ga='git -C "$(git rev-parse --show-toplevel)" add .'
alias gcm='git commit -m'
alias gst='git stash --include-untracked'
alias gcma='git add . && git commit --amend --no-edit'
alias gc='git add . && git commit -m'
alias gp='git push'
alias gr='git reset'
alias glog='git log --oneline -n'
alias gclean='git clean -df && git checkout -- .'
alias gll='git pull'
alias gbl='git branch'

alias git-accept-ours='git checkout --ours .'
alias git-accept-theirs='git checkout --theirs .'
alias git-conflict='git diff --name-only --diff-filter=U'

# Delete both local and remote branch
gbd() {
  git branch -d $1;
  git push origin --delete $1;
}

# nmp, node and yarn alias
alias npr='npm run'
alias ns='npm start'
alias nd='npm run dev'
alias nt='npm test && npm run test:all'
alias ntt='npm run typecheck'
alias nj='npm run jest'
alias ntj='npm run typecheck && npm run jest'
alias nsb='npm run storybook'
alias y='yarn'
alias nvmrc='node -v > .nvmrc'
nvm-update() { nvm install "$1" --reinstall-packages-from="$(nvm current)" && nvm alias default "$1" && nvm use "$1"; }
alias ncu='npx npm-check-updates'

# Other alias
alias code.='code .'
alias copy-files-list='ls -1 | sort -f | pbcopy'
alias ip='curl ifconfig.me'

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

GOPATH="$HOME/go"
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
PATH="/Applications/GoLand.app/Contents/MacOS:$PATH"
PATH="$HOME/go/bin:$PATH"
export PATH

eval "$(/opt/homebrew/bin/brew shellenv)"

# Mac os catalina complains a lot about bash
export BASH_SILENCE_DEPRECATION_WARNING=1
