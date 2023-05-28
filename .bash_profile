update-dot-files() {
  curl -o- https://raw.githubusercontent.com/rtivital/dotfiles/master/.bash_profile > ~/.bash_profile
  curl -o- https://raw.githubusercontent.com/rtivital/dotfiles/master/.bashrc > ~/.bashrc
}

# Over time docker will take all of your disk space
clean-docker() {
  docker container prune
  docker system prune
  docker image prune
  docker volume prune
}

alias brewup='brew update; brew upgrade; brew cleanup; brew doctor'
alias bash-profile='a ~/.bash_profile'

alias t='touch'
alias js='node'
alias ..='cd ..'
alias ...='cd ../..'
alias ls='ls -af'
alias cleands='find . -name ".DS_Store" -delete'

mcd() { mkdir -p "$1" && cd "$1"; }
port() { lsof -i tcp:$1; }
b64() { openssl base64 -in "$1" -out "$1.b64"; }
trash() { command mv "$@" ~/.Trash; }

# Git alias
alias git='LANG=en_US git'
alias g='git'
alias gcn='git clone'
alias gs='git status'
alias ga='git add .'
alias gaa='git add ../..'
alias gaf='git add'
alias gcm='git commit -m'
alias gcma='git add . && git commit --amend --no-edit'
alias gam='git commit --amend -m'
alias gc='git add . && git commit -m'
alias gca='git commit -a'
alias gp='git push'
alias ghp='git push heroku'
alias gpa='git remote | xargs -L1 git push --all' # Push all branches to all remotes
alias gf='git fetch'
alias gr='git reset'
alias glog='git log --oneline -n'
alias gclean='git clean -df && git checkout -- .'
alias gll='git pull'
alias gbl='git branch'
alias gb='git checkout -b'

# Git configs alias
guw() {
  git config user.email "vrtischev@aligntech.com"
  git config user.name "Vitaly Rtischev"
}

gup() {
  git config user.email "rtivital@gmail.com"
  git config user.name "Vitaly Rtishchev"
}

# Delete both local and remote branch
gbd() {
  git branch -d $1;
  git push origin --delete $1;
}

# nmp alias
alias npr='npm run'
alias ne='npm run exec'
alias ns='npm start'
alias nd='npm run dev'
alias nt='npm test'
alias ni='npm install'
alias nis='npm install --save'
alias nisd='npm install --save-dev'
alias niy='npm init -y'
alias ninf='npm info'
alias ntu='npm test -- -u'
alias nvmrc='node -v > .nvmrc'

# Project specific npm alias
alias ntt='npm run typecheck'
alias nj='npm run jest'
alias ntj='npm run typecheck && npm run jest'
alias nsb='npm run storybook'

# Installs latest version of eslint-config-airbnb will all dependencies to the project:
# https://github.com/airbnb/javascript/tree/master/packages/eslint-config-airbnb
alias nair='npm info "eslint-config-airbnb@latest" peerDependencies --json | command sed "s/[\{\},]//g ; s/: /@/g" | xargs npm install --save-dev "eslint-config-airbnb@latest"'

# Installs latest version of eslint-config-airbnb-base will all dependencies to the project:
# https://github.com/airbnb/javascript/tree/master/packages/eslint-config-airbnb-base
alias nairb='npm info "eslint-config-airbnb-base@latest" peerDependencies --json | command sed "s/[\{\},]//g ; s/: /@/g" | xargs npm install --save-dev "eslint-config-airbnb-base@latest"'

# yarn alias
alias y='yarn'
alias ya='yarn add'
alias yad='yarn add --dev'

# Atom and vscode alias
alias a='atom'
alias a.='atom .'
alias atom.='atom .'
alias c='code'
alias c.='code .'
alias code.='code .'

# Utilities
alias mantine-bump='cd ~/code/templates-mantine/mantine-templates-update-script && npm run bump'
alias mantine-update='cd ~/code/templates-mantine/mantine-templates-update-script && npm run update'

# Browsers
alias chrome='/usr/bin/open -a "/Applications/Google Chrome.app"'
lh() { chrome "http://localhost:$1"; }

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

eval "$(/opt/homebrew/bin/brew shellenv)"

# Mac os catalina complains a lot about bash
export BASH_SILENCE_DEPRECATION_WARNING=1
