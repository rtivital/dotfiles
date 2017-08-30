export PS1='\w $ '

alias bash_profile='a ~/.bash_profile'

alias ..='cd ..'
alias ...='cd ../..'
alias ls='ls -af'
alias cleands='find . -name ".DS_Store" #-delete'

mcd() { mkdir -p "$1" && cd "$1"; }
port() { lsof -i tcp:$1; }
trash() { command mv "$@" ~/.Trash; }

alias g='git'
alias gcn='git clone'
alias gs='git status'
alias ga='git add .'
alias gaf='git add'
alias gcm='git commit -m'
alias gca='git commit -a'
alias gp='git push'
alias gr='git reset'
alias glog='git log --oneline -n'
alias gclean='git clean -df && git checkout -- .'
alias gpull='git pull'


alias npr='npm run'
alias ns='npm start'
alias nt='npm test'
alias ni='npm install'
alias nis='npm install --save'
alias nisd='npm install --save-dev'
alias niy='npm init -y'

alias y='yarn'
alias ya='yarn add'
alias yad='yarn add --dev'

alias a='atom'
alias a.='atom .'
alias t='touch'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
