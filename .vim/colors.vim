function! EnableSyntax()
    syntax on

    call matchadd('Error', ' ')             " Highlight "space" characters entered with Alt+Space on macOS
endfunction

if has('gui_running')
    function! TurnLightsOn()
        " colorscheme base16-tomorrow
        " colorscheme base16-gruvbox-light-soft
        " colorscheme base16-harmonic-light
        colorscheme base16-one-light

        call EnableSyntax()
    endfunction

    function! TurnLightsOff()
        " colorscheme base16-default-dark
        " colorscheme base16-snazzy
        " colorscheme base16-phd
        " colorscheme base16-tomorrow-night
        " colorscheme base16-twilight
        " colorscheme base16-darktooth
        " colorscheme base16-classic-dark
        " colorscheme base16-gruvbox-dark-hard
        colorscheme base16-onedark

        call EnableSyntax()

        highlight Comment guifg=#7a8090
    endfunction
else
    function! TurnLightsOn()
        colorscheme PaperColor
        set background=light

        call EnableSyntax()
    endfunction

    function! TurnLightsOff()
        colorscheme PaperColor
        set background=dark

        call EnableSyntax()
    endfunction
endif
