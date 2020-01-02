set nocompatible

so ~/.vim/plugins.vim

syntax enable
set backspace=indent,eol,start
set nowrap
set ruler
let mapleader=','
set number 

"-----------Visuals-------------"
let g:nord_cursor_line_number_background = 1
let g:nord_bold_vertical_split_line = 1
let g:lightline = {
	\ 'colorscheme': 'nord',
	\ }
let g:nord_italic_comments = 1
colorscheme nord
set t_CO=256
"set guifont=Fira_Code:h15
set linespace=13
set laststatus=2

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

"-----------Searching-------------"
set hlsearch
set incsearch

"-----------Mappings--------------"
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"nmap <Leader>ed :tabedit $MYVIMRC<cr>
nmap <Leader>ed :tabedit ~/.vimrc<cr>

"Highlight removal
nmap <Leader><space> :nohlsearch<cr>

"NERDTree toggle
nmap <Leader>1 :NERDTreeToggle<cr>
nmap <c-R> :CtrlPBufTag<cr>

"---------Auto-Commands-----------"
"Automatically source vimrc on save.
augroup autosource
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
