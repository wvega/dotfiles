set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'ctrlpvim/ctrlp.vim'
    Plugin 'tacahiroy/ctrlp-funky'
    Plugin 'dyng/ctrlsf.vim'
    Plugin 'editorconfig/editorconfig-vim'
    Plugin 'Yggdroot/indentLine'
    Plugin 'matchit.zip'
    Plugin 'NLKNguyen/papercolor-theme'
    " Plugin 'shawncplus/phpcomplete.vim'
    Plugin 'ervandew/supertab'
    Plugin 'SirVer/ultisnips'
    Plugin 'joonty/vdebug'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'ntpeters/vim-better-whitespace'
    Plugin 'MattesGroeger/vim-bookmarks'
    Plugin 'tpope/vim-fugitive'
    Plugin 'airblade/vim-gitgutter'
    " Plugin 'groenewege/vim-less'
    " Plugin 'ludovicchabant/vim-gutentags'
    Plugin 'pbrisbin/vim-mkdir'
    Plugin 'rakr/vim-one'
    Plugin 'jremmen/vim-ripgrep'
    " Plugin 'mhinz/vim-signify'
call vundle#end()

filetype plugin indent on

let mapleader=","
" Add GitHub quotation marks to current line and all lines
" below.
let @q='GI>'


" Allow yy, D, and P to work with the clipboard
set clipboard=unnamed
set number
set relativenumber
set cursorline
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set hlsearch
set incsearch
" Always show the status line
set laststatus=2
" Always show 3 lines of context around the cursor.
set scrolloff=3
" Complete till longest comment string, or complete the first match and show
" list of all matches
set wildmenu
set wildmode=longest:full,list:full
" Disable swapfiles
set noswapfile

let g:netrw_bufsettings = "noma nomod nu rnu nobl nowrap ro"

" " Set list of VCS software checked by vim-signify
" let g:signify_vcs_list = ['git', 'svn']

" Taken from https://github.com/stevenbarragan/dotfiles/commit/956c0ed4df7741e51dc9e45835373af392992aea#diff-5b9090f966f7d307f3ea913cd151ad36
if executable('rg')
    let g:ctrlp_user_command = 'rg --files --smart-case --hidden %s'
    let g:ctrlp_use_caching = 0
endif

let g:ctrlp_by_filename = 1
let g:ctrlp_show_hidden = 1

"Use RipGrep for lightning fast Gsearch command
set grepprg=rg\ --vimgrep\ --no-heading\ --hidden
set grepformat=%f:%l:%c:%m,%f:%l:%m
let g:grep_cmd_opts = '--line-number'

" Set vim-ariline theme
" let g:airline_theme='molokai'
" let g:airline_theme='one'
let g:airline_theme='papercolor'
" Populate g:airline_symbols with powerline font symbols
let g:airline_powerline_fonts = 1

if ! exists('g:vdebug_options')
    let g:vdebug_options = { 'path_maps': {} }
endif

let g:vdebug_options['break_on_open'] = 0
let g:vdebug_options['path_maps']['/srv/sources/another-wordpress-classifieds-plugin'] = '/Users/wvega/Projects/drodenbaugh/another-wordpress-classifieds-plugin'
let g:vdebug_options['path_maps']['/srv/www/another-wordpress-classifieds-plugin'] = '/Users/wvega/Projects/drodenbaugh/another-wordpress-classifieds-plugin/vvv-site'
let g:vdebug_options['path_maps']['/srv/sources/business-directory-plugin'] = '/Users/wvega/Projects/drodenbaugh/business-directory-plugin'
let g:vdebug_options['path_maps']['/srv/www/business-directory-plugin'] = '/Users/wvega/Projects/drodenbaugh/business-directory-plugin/vvv-site'
" let g:vdebug_options['path_maps']['/srv/www'] = '/Users/wvega/Projects/personal/VVV/www'
" Use the compact window layout.
let g:vdebug_options['watch_window_style'] = 'compact'

if ! exists('g:vdebug_keymap')
    let g:vdebug_keymap = {}
endif

let g:vdebug_keymap['run'] = '<M-C-Right>'
let g:vdebug_keymap['step_over'] = '<M-C-Left>'
let g:vdebug_keymap['step_into'] = '<M-C-Down>'
let g:vdebug_keymap['step_out'] = '<M-C-Up>'
let g:vdebug_keymap['run_to_cursor'] = '<M-C-S-Right>'
let g:vdebug_keymap['set_breakpoint'] = '<M-C-S-Left>'
let g:vdebug_keymap['get_context'] = '<M-C-S-Down>'
let g:vdebug_keymap['close'] = '<M-C-S-Up>'
let g:vdebug_keymap['eval_under_cursor'] = '<D-d>'

" Need to set as empty for this to work with Vagrant boxes.
" http://www.mediacurrent.com/blog/debug-drupal-php-vim-vdebug
let g:vdebug_options['server'] = ""

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:ctrlsf_ackprg = '/usr/local/bin/rg'

" colorscheme molokai
" colorscheme one
colorscheme PaperColor
syntax on

" Highlight column 81 to help with text alignment
let &colorcolumn="81"

" " Highlight characters in column 81
" call matchadd('ColorColumn', '\%>80v', 100)

" Highlight "space" characters entered with Alt+Space on macOS
call matchadd('Error', ' ')

" highlight ColorColumn guifg=NONE guibg=#1E0010

" relative path  (src/foo.txt)
nnoremap <leader>cr :let @*=expand("%")<CR>
" absolute path  (/something/src/foo.txt)
nnoremap <leader>cp :let @*=expand("%:p")<CR>
" filename       (foo.txt)
nnoremap <leader>cf :let @*=expand("%:t")<CR>
" directory name (/something/src)
nnoremap <leader>cd :let @*=expand("%:p:h")<CR>

nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>sv :so $MYVIMRC<CR>

nnoremap <leader>g :silent grep ""<Left>
nnoremap <leader>f :silent grep "function <C-R><C-W>"
nnoremap <leader>c :silent grep "class <C-R><C-W>"

" Switch between dark and light background
nnoremap <leader>on :set bg=light<CR>
nnoremap <leader>off :set bg=dark<CR>

" clean highlight search
" nnoremap <Esc><Esc> :noh<CR>:<backspace>
nnoremap ,. :noh<CR>:<backspace>

nnoremap <D-p> :CtrlPBuffer<CR>
nnoremap <D-u> :CtrlPMRU<CR>
nnoremap <D-P> :CtrlP<CR>
nnoremap <D-r> :CtrlPFunky<CR>
nnoremap <D-R> :execute 'CtrlPFunky ' . expand('<cword>')<CR>
nnoremap <D-e> :CtrlPTag<CR>
nnoremap <D-E> :CtrlPBufTag<CR>

nnoremap <M-S-Left> :cp<CR>z.
nnoremap <M-S-Right> :cn<CR>z.
nnoremap <M-S-Up> :cw<CR>
nnoremap <M-S-Down> :ccl<CR>

" Navigate between windows
nnoremap <M-D-Up> <C-w>k
nnoremap <M-D-Down> <C-w>j
nnoremap <M-D-Left> <C-w>h
nnoremap <M-D-Right> <C-w>l
nnoremap <D-1> <C-w>t
nnoremap <D-2> 2<C-w>w
nnoremap <D-3> 3<C-w>w
nnoremap <D-4> 4<C-w>w
nnoremap <D-5> 5<C-w>w
nnoremap <D-6> 6<C-w>w
nnoremap <D-7> 7<C-w>w
nnoremap <D-8> 8<C-w>w
nnoremap <D-9> 9<C-w>w
nnoremap <D-0> <C-w>b

" Type two , as replacement for hitting the <Esc> to exit Insert mode
inoremap ,, <Esc>

" Refresh .vimrc when saving the file
au! BufWritePost .vimrc so %
au! BufWritePost .gvimrc so %

