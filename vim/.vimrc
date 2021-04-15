set nocompatible

syntax on
filetype plugin indent on

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**


" Display all matching files when we tab complete
set wildmenu

let g:netrw_banner=0
set autoindent
set expandtab
set tabstop=2
set shiftwidth=4

set backspace=1

packloadall
silent! helptags ALL

set directory=$HOME/.local/share/nvim/swap



" Manage plugins with vim-plug.
call plug#begin()
Plug 'sainnhe/gruvbox-material'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'makerj/vim-pdf'
"Enhanced netrw exp
Plug 'tpope/vim-vinegar'
"Git Wrapper
Plug 'tpope/vim-fugitive'
"Plug 'easymotion/vim-easymotion'
Plug 'mg979/vim-visual-multi'
"Symbol Autocomplete
Plug 'Raimondi/delimitMate'
Plug 'powentan/vim-orgmode'
Plug 'rust-lang/rust.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'knubie/vim-kitty-navigator'
Plug 'vim-test/vim-test'
Plug 'ryanoasis/vim-devicons'
call plug#end()

  " Important!!
        if has('termguicolors')
          set termguicolors
        endif
        " For dark version
        set background=dark
        " Set contrast.
        " This configuration option should be placed before `colorscheme gruvbox-material`.
        " Available values: 'hard', 'medium'(default), 'soft'
        let g:gruvbox_material_background = 'medium'
        colorscheme gruvbox-material

" Configure the `make` command to run RSpec
set makeprg=bundle\ exec\ rspec\ -f\ QuickfixFormatter

"Configure lightline
let g:lightline = {
      \ 'colorscheme': 'gruvbox_material',
      \ }
let g:lightline.separator = {
	\   'left': '', 'right': ''
  \}
let g:lightline.subseparator = {
	\   'left': '', 'right': '' 
  \}


set number
:nnoremap p h
:nnoremap P H
:nnoremap x j
:nnoremap X J
:nnoremap y l
:nnoremap Y L
:nnoremap h x
:nnoremap H X
:nnoremap j p
:nnoremap J P
:nnoremap l y
:nnoremap L Y


