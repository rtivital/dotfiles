alias bash_profile='a ~/.bash_profile'

alias g='git'
alias gs='git status'
alias ga='git add .'
alias gcm='git commit -m'
alias gp='git push'
alias gclean='git clean -df && git checkout -- .'
alias gpull='git pull'

alias npr='npm run'
alias ns='npm start'
alias nt='npm test'
alias ni='npm install'
alias niy='npm init -y'

alias a='atom'
alias t='touch'
port() {
  lsof -i tcp:$1
}
