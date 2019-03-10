alias ezsh="mvim ~/.zshrc"
alias ohmy="mvim ~/.oh-my-custom-zsh/"
alias ohmyzsh="mvim ~/.oh-my-zsh"
alias sync-expenses="rsync -av ~/Library/Mobile\ Documents/iCloud~is~workflow~my~workflows/Documents/Expenses/ ~/Downloads/Expenses/"
alias zshalias="vim $ZSH_CUSTOM/alias.zsh && source $ZSH_CUSTOM/alias.zsh"

# Create symbolic links to relative files or directories using their absolute paths.
symlink() {
    ln -s "$(realpath $1)" "$2"
}

# Execute binaries from Composer's vendor directory.
function vendor() {
    vendor/bin/$1 "${@:2}"
}

linkmacvim() {
    ln -fs $(brew --cellar)/macvim/$(ls -1 $(brew --cellar)/macvim | tail -1)/MacVim.app /Applications
}

hl() {
    pbpaste | highlight --font=Monaco --font-size=20 --syntax=$1 -O rtf --style=${2-base16/onedark} --encoding=utf-8 | pbcopy
}
