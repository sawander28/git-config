[ $EUID == 0 ] && return

if [ ! -f ~/bashrc.d/git-prompt.sh ]; then
  curl -sLOf ~/bashrc.d/git-prompt.sh --create-dirs \
    "https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh"
fi

GIT_PS1_SHOWDIRTYSTATE="true"
GIT_PS1_SHOWSTASHSTATE="$"
GIT_PS1_SHOWUNTRACKEDFILES="true"
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS="true"
GIT_PS1_HIDE_IF_PWD_IGNORED="true"
GIT_PS1_STATESEPARATOR="/"
GIT_PS1_COMPRESSSPARSESTATE="?"
GIT_PS1_DESCRIBE_STYLE="branch,describe,tag"

### Window title ###
PS1='\[\033]0;\u@\h:\w\007'

### Prompt ###
PS1+='\[\033[01;32m\]\u@\h\[\033[00m\]$(__git_ps1 " (%s)") \[\033[01;34m\]\w \$\[\033[00m\] '
