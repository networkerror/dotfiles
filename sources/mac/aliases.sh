function title {
  echo -ne "\033]0;"$*"\007"
}

alias vi="mvim -v"
alias vim="mvim -v"

alias client="title CLIENT && cd ~/Code/cpi/client && gulp serve"
alias gateway="title GATEWAY && cd ~/Code/cpi/gateway && SKIP_AUTH=true be rails s --port 8001"
alias gatewaystub="title GATEWAY && cd ~/Code/cpi/gateway && STUB_SERVICES=true SKIP_AUTH=true be rails"
alias reporting="title REPORTING && cd ~/Code/cpi/reporting && be rails s --port 8002"
