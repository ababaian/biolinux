" Generic vim Settings
set nocp
set autoread
set ignorecase
set hlsearch
set showmatch
" set cc=80
set nowrap

silent !xset r rate 200 35
silent !clear

" Tab set-up
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

" Color Theme
set background=dark
set number

colors alduin

" Tab Navigation
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext
map <leader><Tab> :tabnext<cr>

" Window Movments
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Move a line of text using ALT+[jk] or Command+[jk] on mac
"nmap <C-j> mz:m+<cr>`z
"nmap <C-k> mz:m-2<cr>`z
"vmap <C-j> :m'>+<cr>`<my`>mzgv`yo`z
"vmap <C-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Pathogen Package Manager
execute pathogen#infect()

" Syntax Highlighting
syntax on
filetype plugin indent on

" NERDTree Package
map <C-n> :NERDTreeToggle<CR>
syntax enable

" Airline config
let g:airline_theme='wombat'
"let g:airline_powerline_fonts = 1
"if !exists('g:airline_symbols')
"	let g:airline_symbols = {}
"endif
"let g:airline_symbols.space = "\ua0"

" F8: Strip trailing whitespace
nnoremap <F8> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
