set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


call plug#begin()
" Use release branch (recommended)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Or build from source code by using npm
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}


call plug#end()


"Auto indent python
Plugin 'vim-scripts/indentpython.vim'
" Autocomplete
Bundle 'Valloric/YouCompleteMe'
" makes sure auto complete goes away when you are done
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" C#
Bundle 'OmniSharp/omnisharp-vim'

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Plugin for making foldings correct
Plugin 'tmhedberg/SimpylFold'
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
"Let vim check  your syntax on each save
Plugin 'vim-syntastic/syntastic'
"Pep 8 checking
Plugin 'nvie/vim-flake8'
"Make python code look pretty
let python_highlight_all=1
syntax on

"COLOR SCHEMES
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
"NERD TREE
Plugin 'scrooloose/nerdtree'
"PowerLine to see status bar
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" ...
" Mark bad whitespaces as red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" Automatically wrap text that extends beyond screen

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set wrap

" Encoding
set encoding=utf-8

" Show line number
set number

" Status bar
set laststatus=2

set backspace=indent,eol,start " more powerful backspacing
set clipboard=unnamed

" for auto indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=120
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

