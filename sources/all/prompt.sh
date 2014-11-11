# GULP tab completion
if hash gulp 2>/dev/null; then
  eval "$(gulp --completion=bash)"
fi

function_exists() {
    declare -f -F $1 > /dev/null
    return $?
}

# GIT tab completion
SOMEDUDES_GIT_PROMPT='/usr/local/etc/bash_completion.d/git-completion.bash'
if [ -f "$SOMEDUDES_GIT_PROMPT" ]; then
  source $SOMEDUDES_GIT_PROMPT
fi

MAC_GIT_PROMPT='/Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh'
if [ -f "$MAC_GIT_PROMPT" ]; then
  source $MAC_GIT_PROMPT
fi

UBUNTU_GIT_PROMPT='/etc/bash_completion.d/git-prompt'
if [ -f "$UBUNTU_GIT_PROMPT" ]; then
  source $UBUNTU_GIT_PROMPT
fi


# FANCY PROMPT!
COLOR_BLUE="\[\033[1;36m\]"
COLOR_GREEN="\[\033[1;32m\]"
COLOR_YELLOW="\[\033[1;33m\]"
COLOR_RESET="\[\033[0m\]"
INSERT_USER="\u"
INSERT_PATH="\w"
INSERT_BRANCH="\$(__git_ps1)"

# Show Current User in BLUE
PS1="[$COLOR_BLUE$INSERT_USER$COLOR_RESET"
# Show Current Directory in GREEN
PS1+=" $COLOR_GREEN$INSERT_PATH$COLOR_RESET"
# If gitprompt is here, show current branch in YELLO
if function_exists __git_ps1; then
	PS1+="$COLOR_YELLOW$INSERT_BRANCH$COLOR_RESET"
fi
PS1+="]\$ "
export PS1
