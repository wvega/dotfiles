" Set default window size
set lines=62 columns=196
" Use Hack because it comes with Powerline Symbols support
set guifont=Hack
" Disabel vertical scrollbars
set guioptions-=L
set guioptions-=l
set guioptions-=R
set guioptions-=r

macmenu File.Print key=<Nop>
nnoremap <D-p> :CtrlPBuffer<CR>
