" Vim config file for Max Hallden <max.hallden@gmail.com>

set encoding=utf-8

set background=dark
" I think I should have this
set nocompatible
" Enable syntax highlighting
syntax on
" Use filetype specific settings or something
filetype plugin indent on
" Better command-line completion
set wildmenu
" Highlight searches
set hlsearch
" Ignore case unless upper
set ignorecase
set smartcase
" Keep same indent per default
set autoindent
" Cursor position
set ruler
" No beeping please
set visualbell
set t_vb=
" Enable mouse
set mouse=a
" Avoids "press <Enter> to continue"
" set cmdheight=2
" Show line numbers
" set number
" Folding
set foldmethod=syntax
set foldnestmax=1
" Automatic line wrap
" set tw=100
" Use system clipboard
set clipboard=unnamedplus
" Popup window at bottom
set splitbelow
" Allow switching buffers without saving
set hidden
" Indent to align argument list
set cino+=(0

" Map <C-L> to also turn off search highlight
nnoremap <C-L> :nohl<CR><C-L>

" File type specific

" Arduino - use C syntax
au BufRead,BufNewFile *.ino setf c
" PDDL - use LISP syntax
au BufRead,BufNewFile *.pddl setf lisp

" Plugins

" Vim-plug
call plug#begin('~/.vim/plugged')
" Linting and stuff for lots of stuff
" Plug 'https://github.com/scrooloose/syntastic.git'
" Completion and stuff for lots of stuff
" Plug 'https://github.com/valloric/youcompleteme.git', { 'do': './install.py --all' }
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }" 
" Sets indentation settings automagically
Plug 'https://github.com/tpope/vim-sleuth.git'
call plug#end()

" Plugin settings

" Syntastic
let g:syntastic_cs_checkers = ['syntax', 'semantic', 'issues']
" YouCompleteMe
" Set this very high to disable identifier completion
let g:ycm_min_num_chars_for_completion = 3
let g:ycm_confirm_extra_conf = 0
