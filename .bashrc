# -------------------------------
# paths
# -------------------------------

# setting PATH for Python 2.7
#PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"

# add git-core binaries to PATH
PATH="/usr/local/git/libexec/git-core:$PATH"

# MacPorts Installer addition on 2012-03-23_at_07:37:26: adding an appropriate PATH variable for use with MacPorts.
PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# setting MySQL PATH. MacPorts links ending in 5 are not easily to find (e.g. mysqldump5)
PATH="/opt/local/lib/mysql5/bin:$PATH"

# MAMP path
#PATH="/Applications/MAMP/Library/bin/:$PATH"

# add ~/bin to path
test -d "$HOME/bin" && PATH="$HOME/bin:$PATH"

export PATH


# -------------------------------
# aliases
# -------------------------------

alias v="mvim"
alias n="nano"
alias dir=ls
alias gits="git status"
alias gita="git add"
alias gitc="git commit"
alias gitp="git push"
alias gitd="git diff"
alias gitl="git log --graph --oneline --all"
alias django="python manage.py"

alias mysqlstart='sudo /opt/local/bin/mysqld_safe5 &'
alias mysqlstop='/opt/local/bin/mysqladmin5 -u root -p shutdown'

alias apache2ctl='sudo /opt/local/apache2/bin/apachectl'

alias wradio='mplayer -loop 0 http://63.243.143.155/WRADIOAAC'
alias radioacktiva='mplayer -loop 0 http://208.80.54.20/RADIO_ACTIVAAAC'
alias 90s='mplayer -loop 0 http://8473.live.streamtheworld.com/BIGR_90ALTROCK'

# -------------------------------
# prompt
# -------------------------------

# i haz colors
export CLICOLOR=1

# bash colors
RED="\[\033[0;31m\]"
BLUE="\[\033[0;34m\]"
LIGHT_BLUE="\[\033[1;34m\]"
GREEN="\[\033[0;32m\]"
LIGHT_GREEN="\[\033[1;32m\]"
YELLOW="\[\033[0;33m\]"
LIGHT_GRAY="\[\033[0;37m\]"

PS_CLEAR="\[\033[0m\]"

if [ "$USER" = "root" ]; then
    PS_S="${RED}#"
else
    PS_S="${YELLOW}\$"
fi

function __git_current_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

PS1="[\u@\h \W]\$"
PS1="${GREEN}(${LIGHT_GRAY}\W${GREEN}) ${PS_S}${PS_CLEAR} "
PS1="\u@mac${LIGHT_GRAY}:${PS_CLEAR}\W${GREEN}$(__git_current_branch)${PS_S} ${PS_CLEAR}"
PS1="\u@mac${LIGHT_GRAY}:${PS_CLEAR}\W${PS_S} ${PS_CLEAR}"

unset PROMPT_COMMAND

if [ $TERM = "dumb" ]; then
    PS1="\$ "
fi

export PS1
