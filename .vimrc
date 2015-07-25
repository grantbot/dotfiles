" 
" Nuts and Bolts*****
"

set nocompatible

filetype plugin indent on

set modifiable

" Use spaces instead of tabs
set expandtab
" Be smart when using tabs ;)
set smarttab
" Change existing tab characters to spaces
retab
set ai "Auto indent
set si "Smart indent

" Map leader to ',' (usually) '\'
let mapleader = ","

" Press jk or kj while in insert mode to go back to normal mode
inoremap jk <Esc>
inoremap kj <Esc>

" 
" Navigation*****
"
" Remap switching between tabs to ctrl + j, k (to move) and n (to make new)
map  <C-k> :tabn<CR>
map  <C-j> :tabp<CR>
map  <C-n> :tabnew<CR>
" Remap switching between split panes to ctrl + h, l
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l


"
" UI*****
"
set ruler
set cursorline
set number
syntax enable

set scrolloff=5
set mouse=a
set wrap "Wrap lines

" 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2
imap <S-Tab> <C-o><<

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" In view mode, press enter on a word to toggle highlighting on all instances of that word. 
let g:highlighting = 0
function! Highlighting()
	  if g:highlighting == 1 && @/ =~ '^\\<'.expand('<cword>').'\\>$'
		      let g:highlighting = 0
		          return ":silent nohlsearch\<CR>"
			    endif
			      let @/ = '\<'.expand('<cword>').'\>'
			        let g:highlighting = 1
				  return ":silent set hlsearch\<CR>"
			  endfunction
			  nnoremap <silent> <expr> <CR> Highlighting()

" 
" Interacting With Files*****
"

" Map save to leader ',' + w
noremap <Leader>w :update<CR>
" Map quit to leader ',' + q
noremap <Leader>q :quit<CR>
" Map write + quit to leader ',' + wq
noremap <Leader>wq :wq<CR>

" Make uppercase U 'redo' insted of Ctr + R, which is a pain
nnoremap U <C-r>

"Remap coyping and pasting from clipboard
vnoremap <C-c> :w !pbcopy<CR><CR> 
noremap <C-v> :r !pbpaste<CR><CR>




