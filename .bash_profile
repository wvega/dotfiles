EDITOR=sublime

# -------------------------------
# paths
# -------------------------------

PATH="/usr/local/bin:$PATH"

# setting PATH for Python 2.7
#PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
# add git-core binaries to PATH
PATH="/usr/local/git/libexec/git-core:$PATH"
# MacPorts Installer addition on 2012-03-23_at_07:37:26: adding an appropriate PATH variable for use with MacPorts.
PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.
# setting MySQL PATH. MacPorts links ending in 5 are not easily to find (e.g. mysqldump5)
PATH="/opt/local/lib/mysql5/bin:$PATH"
# Add Packer to the PATH
PATH="/usr/local/packer:$PATH"
# Add PhantomJS to PATH
PATH="/usr/local/phantomjs/bin:$PATH"
# Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin
# Add Composer vendors to PATH
PATH="$HOME/.composer/vendor/bin:$PATH"
# Add ~/bin to path
test -d "$HOME/bin" && PATH="$HOME/bin:$PATH"
### Added by the Heroku Toolbelt
PATH="/usr/local/heroku/bin:$PATH"
### Add Terraform to path
PATH="$PATH:/usr/local/terraform"

export PATH


# -------------------------------
# tab completions
# -------------------------------

source $HOME/.composer/vendor/wp-cli/wp-cli/utils/wp-completion.bash

# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{bash_prompt,aliases}; do
    [ -r "$file" ] && source "$file"
done
unset file

# autojump
if [ -f /opt/local/etc/profile.d/autojump.sh ]; then
    . /opt/local/etc/profile.d/autojump.sh
fi

# virtualenvwrapper
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    source /usr/local/bin/virtualenvwrapper.sh
fi

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"


# Prefer US English and use UTF-8
export LC_CTYPE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LANG="en_US"
