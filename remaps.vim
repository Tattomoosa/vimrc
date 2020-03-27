""""""""""""""""""""""""""""""""""""""""
" LEADER
""""""""""""""""""""""""""""""""""""""""

" leader is space
let mapleader = "\<Space>"

" these are a little junk and could be a function
" nnoremap <leader>eh :e <C-R>%<C-H>h<CR>
" nnoremap <leader>ec :e <C-R>%<C-H>c<CR>
" nnoremap <leader>eH :e <C-R>%<C-H><C-H><C-H>h<CR>
" nnoremap <leader>eC :e <C-R>%<C-H>cpp<CR>

" FILETYPE
" Edit .h files easily
" TODO no error on open if file doesn't exist!
" autocmd FileType c nnoremap <buffer> <leader>eh :e %:r.h<CR>
" TODO no error on open if file doesn't exist!
" autocmd FileType cpp nnoremap <buffer> <leader>eh :e %:r.h<CR>
" autocmd BufEnter,Bufnew *.h nnoremap <buffer> <leader>ec :e %:r.c*<CR>

" easy vimrc editing
nnoremap <leader>ev :edit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" yanks the whole file and returns cursor to where you were
nnoremap <leader>Y gg"*yG``

" saves all open buffers
nnoremap <leader>w :wall<CR>
nnoremap <leader>g :Git 

" EZ window switching... mostly been using c-w though. might ditch
" nnoremap <leader>h <C-w>h
" nnoremap <leader>j <C-w>j
" nnoremap <leader>k <C-w>k
" nnoremap <leader>l <C-w>l

nnoremap <leader>D :put =strftime('%m/%d/%y')<CR>

nnoremap <leader>c :CocList<CR>
nnoremap <leader>d :CocList diagnostics<CR>

" nnoremap <leader>cc :!g++ -g -Wall -ansi *.cpp<CR>
" nnoremap <leader>cr :!g++ -g -Wall -ansi *.cpp && ./a.out<CR>
" nnoremap <leader>rr :!./a.out<CR>
" nnoremap <leader>rv :!valgrind ./a.out<CR>
" nnoremap <leader>rV :!valgrind -v --leak-check=full --log-file=valgrind_log.txt ./a.out<CR>
" nnoremap <leader>rd :!gdb -tui ./a.out<CR>

" So the goal is to compile the program and load the compiler's output
" into the changelist so we can jump between errors with :cn and :cp
" failed attempts:
nnoremap <leader>M :silent make!<CR><C-l>:copen<CR>:cc<CR>
nnoremap <leader>m :silent make!<CR><C-l>

" Toggle GitGutter
nnoremap <leader>tg :GitGutterToggle<CR>
nnoremap <leader>tn :set relativenumber!<CR>:set number!<CR>

nnoremap <leader><leader> :nohl<CR>

""""""""""""""""""""""""""""""""""""""""
" NORMAL MODE
""""""""""""""""""""""""""""""""""""""""

" easy switch buffers
nnoremap [b :bprevious<CR>
nnoremap ]b :bnext<CR>

" easy switch tabs
nnoremap [t :tabp<CR>
nnoremap ]t :tabn<CR>

" easy switch change/quicklist
nnoremap [q :cp<CR>
nnoremap ]q :cn<CR>

" easy switch locations
nnoremap [q :cp<CR>
nnoremap ]q :cn<CR>

" go to next error
nnoremap ]l :lprev<CR>
nnoremap [l :lnext<CR>


" vertical new files instead of horizontal
nnoremap <C-w>N :vnew<CR>

" Vim's own manual recommends this remapping since Y is by default the 
" same as yy and that's nonsense.
nnoremap Y y$

""""""""""""""""""""""""""""""""""""""""
" INSERT MODE
""""""""""""""""""""""""""""""""""""""""

" for functions and stuff
inoremap (<CR> (<CR>)<C-o>O
inoremap [<CR> [<CR>]<C-o>O
inoremap {<CR> {<CR>}<C-o>O

" for keyboards that I can't remap capslock on
inoremap kj <Esc>
inoremap jk <Esc>

""""""""""""""""""""""""""""""""""""""""
" VISUAL MODE
""""""""""""""""""""""""""""""""""""""""

"visual mode
vnoremap < <gv
vnoremap > >gv
