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
"Plug 'makerj/vim-pdf'
"Enhanced netrw exp
Plug 'tpope/vim-vinegar'
"Git Wrapper
Plug 'tpope/vim-fugitive'
"Plug 'easymotion/vim-easymotion'
Plug 'mg979/vim-visual-multi'
"Symbol Autocomplete
Plug 'Raimondi/delimitMate'
Plug 'knubie/vim-kitty-navigator'
Plug 'vim-test/vim-test'
Plug 'vim-scripts/AutoComplPop'
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
        let g:gruvbox_material_background = 'soft'
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

"Maps p as left
":nnoremap p h
":vnoremap p h
":nnoremap P H
":vnoremap P H

"Maps x as down
":nnoremap x j
":vnoremap x j
":nnoremap X J
":vnoremap X J

"Maps y as right
":nnoremap y l
":vnoremap y l
":nnoremap Y L
":vnoremap Y L

"Maps h as abolish
":nnoremap h x
":vnoremap h x
":nnoremap H X
":vnoremap H X 

"Maps l as pull
":nnoremap l y
":vnoremap l y
":nnoremap L Y
":vnoremap L Y

"Maps j as join
":nnoremap j p
":vnoremap j p
":nnoremap J P
":vnoremap J P

"Changes position of w in normal mode
":nnoremap w q
":vnoremap w q
":nnoremap W Q
":vnoremap W Q
":nnoremap q w
":vnoremap q w
":nnoremap Q W
":vnoremap Q W
