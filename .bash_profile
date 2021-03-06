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

# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{bash_prompt,aliases}; do
    [ -r "$file" ] && source "$file"
done
unset file

# autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

export NVM_DIR="/Users/wvega/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Prefer US English and use UTF-8
export LC_CTYPE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
