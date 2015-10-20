function title {
  echo -ne "\033]0;"$*"\007"
}

# To set a title: alias gatewaystub="title GATEWAY && ..."
