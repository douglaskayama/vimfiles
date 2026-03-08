if has("gui_macvim")
    macmenu &File.New\ Tab key=<nop>
    "set background=light
    set background=dark

    "colorscheme desert
    "colorscheme zaibatsu
    "colorscheme srcery
    colorscheme Ariake-Dark

    "0O 1lI| {([])}
    "set guifont=0xProto\ Nerd\ Font:h18
    "set guifont=Anonymous\ Pro:h16
    "set guifont=CMUTypewriter\ NF:h20
    "set guifont=DM\ Mono:h18
    "set guifont=Departure\ Mono:h18
    "set guifont=Fira\ Code:h18
    "set guifont=Hack\ Nerd\ Font:h18
    "set guifont=Hasklug\ Nerd\ Font:h18
    set guifont=IBM\ Plex\ Mono:h18
    "set guifont=Inconsolata:h16
    "set guifont=JetBrainsMono\ NF:h16
    "set guifont=JetBrains\ Mono:h16
    "set guifont=JuliaMono\ Nerd\ Font:h17
    "set guifont=Letter\ Gothic\ Std:h15
    "set guifont=NotoMono\ NFP:h18
    "set guifont=Operator\ Mono:h16
    "set guifont=RobotoMono\ Nerd\ Font:h18
    "set guifont=Space\ Mono:h18
    "set guifont=Source\ Code\ Pro:h18
    "set guifont=Ubuntu\ Mono:h16
    "set guifont=Victor\ Mono:h16

    set linespace=3
    set transparency=8
    " make Mac's Option key behave as the Meta key
    "set macmeta

    " key binding for Command-T to behave properly
    " uncomment to replace the Mac Command-T key to Command-T plugin
    map <D-t> :CommandT<CR>
else
    set background=light
    "set guifont=JetBrains\ Mono:h16
    set guifont=IBM\ Plex\ Mono:h16
    "set guifont=Ubuntu\ Mono\ 12
endif
"colorscheme zenburn
"colorscheme mustang
"colorscheme iawriter
set linespace=5
"set background=light
"set guifont=Cousine:h16

let g:writeroom = 0
if has("gui_macvim")
    let g:transparency = &transparency
endif
function! WriteRoom()
    if has("gui_running")
        if g:writeroom == 0
            let g:writeroom = 1
            NERDTreeClose
            Goyo
            Limelight
            set nolist
"           set columns=80
"           set fullscreen
"           set linebreak
"           set nocursorline
"           set nolist
"           set nonumber
"           set noshowmode
"           "set rulerformat=%{strftime('%b %e %I:%M %p')}
"           if has("gui_macvim")
"               set transparency=0
"           endif
"           hi NonText guifg=bg
        else
            let g:writeroom = 0
            Goyo
            Limelight!
            set list
"           set cursorline
"           set list
"           set nofullscreen
"           set nolinebreak
"           set number
"           set rulerformat=
"           set showmode
"           if has("gui_macvim")
"               let &transparency=g:transparency
"           endif
"           hi clear
        endif
    endif
endfunction

nmap gw :exe WriteRoom()<cr>
imap <leader>f <esc>:exe WriteRoom()<cr>i
