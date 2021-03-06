" Sets a column marker at 80 characters
set colorcolumn=80
set updatetime=100

" TODO research this
set backupcopy=yes

" load project-specific .vimrc
set exrc

" Apparently this makes tmux and vim play nicer
set background=dark
set t_Co=256

set laststatus=2 " always display status
set confirm

set path+=**

" indentation
set autoindent
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set smarttab
set smartindent

if has("mouse_sgr")
    set ttymouse=sgr
end

" do not move cursor to the start of line on <C-d> etc.
set nostartofline
" no line numbers
set norelativenumber
set nonumber
" but we still want a left margin
set foldcolumn=1

" line,column numbers in status bar
set ruler

set mouse=a " enable use of mouse

" autocomplete
set wildmenu
" show matching [{()}]
set showmatch
set mps+=<:>
set mat=5
" show commands
set showcmd
" per file foldmethod, etc with comment on bottom line
set modeline

" searching
set incsearch
set ignorecase
set smartcase
set hlsearch

" don't ever beep at me
set visualbell
set noerrorbells

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

" set terminal's title
set title
set titleold=

set backspace=indent,eol,start

" COLORS {{{
" gruvbox {{{
let g:gruvbox_contrast_dark = 'soft'
let g:gruvbox_color_column = 'bg4'
" }}}
set background=dark
set termguicolors
" color scheme
"colorscheme gruvbox "supports better c++
"colorscheme sacredforest
"colorscheme spacegray
"colorscheme parsec
"colorscheme zenburn "supports better c++
"colorscheme limelight
" colorscheme seoul256 "supports better c++
"colorscheme PaperColor
"colorscheme zenburn
colorscheme apprentice "supports better c++
"colorscheme dracula "supports better c++
"colorscheme base16-tomorrow-night "supports better c++


" Set interface colors
" highlight CWD ctermfg=grey ctermbg=black guibg=#504945 guifg=#000000 gui=bold
" highlight File ctermfg=red ctermbg=black guibg=#504945 guifg=#cbe1b1
" highlight FoldColumn ctermbg=black guibg=#706965

"highlight ColorColumn ctermbg=black guibg=#3c3836
"highlight ColorColumn ctermbg=black guibg=#101012
" highlight clear SignColumn
"highlight SignColumn gui=none

" git gutter (gruvbox)
" highlight GitGutterAdd guifg=#689d6a
" highlight GitGutterChange guifg=#458488
" highlight GitGutterDelete guifg=#cc241d

" git gutter (dracula)
highlight GitGutterAdd guifg=#40ca7b guibg=#181818
highlight GitGutterChange guifg=#666666 guibg=#181818
highlight GitGutterDelete guifg=#ff5555 guibg=#181818


" git gutter (zenburn)
"highlight GitGutterAdd guifg=#60B48A
"highlight GitGutterChange guifg=#506070
"highlight GitGutterDelete guifg=#dca3a3

" let g:gitgutter_sign_added = '++'
" let g:gitgutter_sign_modified = '~~'
" let g:gitgutter_sign_removed = '__'
" let g:gitgutter_sign_removed_first_line = '^^'
" let g:gitgutter_sign_modified_removed = '~_'

highlight SignColumn ctermbg=black guibg=#181818 ctermfg=white guifg=white
let g:gitgutter_set_sign_backgrounds = 1

" highlight lineNr guibg=#504945 guifg=grey
" highlight CursorLineNr guibg=#222222 guifg=white gui=bold
" Set interface colors
highlight CWD ctermfg=grey ctermbg=black guibg=#504945 guifg=#000000 gui=bold
highlight File ctermfg=red ctermbg=black guibg=#504945 guifg=#cbe1b1
" highlight FoldColumn ctermbg=black guibg=#706965

highlight ColorColumn ctermbg=black guibg=#181818

highlight lineNr guibg=#181818 guifg=grey
highlight CursorLineNr guibg=#222222 guifg=white gui=bold

highlight StatusLine guibg=#dddddd ctermbg=white
" less obtrusive search highlighting
highlight Search gui=bold,underline guibg=#111111 guifg=#ff8700
" highlight Search ctermbg=black ctermfg=lightblue cterm=bold,underline gui=bold,underline guibg=#555599 guifg=#111111
" }}

" buffers
set hidden " allows hidden unsaved buffers
set confirm " won't quit with unsaved buffers

" splits
set splitbelow
set splitright

" wrapping and stuff
set showbreak=\ ↳\ \ \ ↳\ 
set breakindent
set breakindentopt=sbr,shift:4
set nolist
set wrap
set linebreak breakat&vim

set list
" set listchars=tab:\|\ ,trail:·,nbsp:·
set listchars=tab:\ \ ,trail:·,nbsp:·,

" puts return character in numberline
set cpo=n
" statusline
set statusline=
" dark
set statusline+=%#CWD#
" flags
set statusline+=%m
set statusline+=%r
set statusline+=%h
set statusline+=%w
" lightgrey
set statusline+=%#Cursor#

" Your vimrc
function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction

" buffer number
set statusline+=\ %n\ 
" mode trick from https://dustri.org/b/lightweight-and-sexy-status-bar-in-vim.html
set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ \ ':''}
set statusline+=%#DiffChange#%{(mode()=='i')?'\ \ INSERT\ \ ':''}
set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ RPLACE\ \ ':''}
set statusline+=%#Cursor#%{(mode()=='v')?'\ \ VISUAL\ \ ':''}
set statusline+=%#StatusLineIM#
" short filename
set statusline+=\ %f\ 
set statusline+=%=
set statusline+=\ %{GitStatus()}\ 
set statusline+=%#CWD#
set statusline+=%{coc#status()}
set statusline+=%#Cursor#
set statusline+=\ %y\ 
set statusline+=\ %4l,%-4c\ 

" enable fenced code block syntax highlighting in markdown, not working?
let g:markdown_fenced_languages = ['html', 'javascript', 'js=javascript', 'css']
