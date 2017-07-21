alias bash_profile='a ~/.bash_profile'

alias g='git'
alias gs='git status'
alias ga='git add .'
alias gaf='git add'
alias gcm='git commit -m'
alias gp='git push'
alias gr='git reset'
alias glog='git log --oneline -n'
alias gclean='git clean -df && git checkout -- .'
alias gpull='git pull'


alias npr='npm run'
alias ns='npm start'
alias nt='npm test'
alias ni='npm install'
alias niy='npm init -y'


alias y='yarn'
alias ya='yarn add'
alias yad='yarn add --dev'

alias a='atom'
alias t='touch'
port() {
  lsof -i tcp:$1
}
