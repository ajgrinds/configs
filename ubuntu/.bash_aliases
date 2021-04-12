alias sudo="sudo "
alias apt='apt -y'
alias l="ls -CF"
alias c="cd"
alias resource="source ~/.bashrc"
alias python="python3"
alias pishink='pishrink.sh'

__cm () {
  git pull "https://$(git config --get user.name)@$(git remote get-url --push origin | cut -c 9-)"
  git add .
  git commit -a -m "${*}"
  git push "https://$(git config --get user.name)@$(git remote get-url --push origin | cut -c 9-)"

}
alias cm="__cm"
