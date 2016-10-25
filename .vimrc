" Julia commands enabling
filetype plugin on

" Syntax properties
syntax enable
set mouse=a
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set smartindent
set autoindent
set expandtab
set clipboard=unnamedplus

" Shortcuts
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>

" Color and fancyness
"colorscheme molokai
"set t_Co=256
"let g:molokai_original = 1
"let g:rehash256 = 1
colorscheme grayvim
let g:Powerline_symbols = "fancy"
set number

" Airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

let g:airline_theme = 'powerlineish'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_powerline_fonts = 1

" Separators for lemon font
"let g:airline_left_sep='⮀'
"let g:airline_right_sep='⮂'
"let g:airline_left_sep='>'
"let g:airline_right_sep='<'

" Color column 80
set colorcolumn=80
let &colorcolumn=join(range(81,999),",")

" Always split to the right
set splitright


" Prolog stuff
let g:filetype_pl="prolog"

" Plugins with vim-plug
call plug#begin('~/.vim/plugged')
" F#
"Plug 'fsharp/vim-fsharp', {
"	 \ 'for': 'fsharp',
"	 \ 'do':  'make fsautocomplete',
"	 \}

" Add to runtime path
call plug#end()

" F# stuff
" Syntax autocompletion text
let g:fsharp_completion_helptext = 1


" Keybindings
" Cycle buffers
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>
