if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# autojump
if [ -f /opt/local/etc/profile.d/autojump.sh ]; then
    . /opt/local/etc/profile.d/autojump.sh
fi

# MacPorts Installer addition on 2012-03-23_at_07:37:26: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# MAMP path
export PATH="/Applications/MAMP/Library/bin/:$PATH"