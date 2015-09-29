if [ -f /usr/libexec/java_home ]; then
  export JAVA_HOME=`/usr/libexec/java_home -v 1.8`;
fi

export PATH=$PATH:~/dotfiles/bin:~/bin

export LSCOLORS=dxfxcxdxbxegedabagacad

# history handling
#
# Erase duplicates
export HISTCONTROL=erasedups
# resize history size
export HISTSIZE=100000
export HISTFILESIZE=10000
# append to bash_history if Terminal.app quits
shopt -s histappend
