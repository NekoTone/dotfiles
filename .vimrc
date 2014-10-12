execute pathogen#infect()
syntax on
filetype on
filetype plugin indent on
filetype plugin on

"autocmd vimenter * NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Desactive le anien touche vi
set nocompatible

" Encodage par default
set encoding=utf-8

" Affiche le numero des ligne
set number

" Barre de status
set laststatus=2 " Nombre de ligne de statut
set statusline=%F%m\ %r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v]\ %=[Time:\ %{strftime(\"%H:%M\")}]


" Choix de la touche d introduction du mapping additionnel
let mapleader=","

colorscheme molokai 

" Redefinition des racourci clavier
" Afficher la navigation
nmap <C-n> :NERDTreeToggle<CR>
" Run current file in ruby
nmap <Leader>rr <ESC>:!ruby %<CR>
" [plugin vim surrond] ajout
nmap <Leader>a ysiw
" [plugin vim surrond] supprimer
nmap <Leader>d ds

" Defini un retrait de 2 espace pour identation
set ts=2 sw=2 et
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

"autocompletion ruby
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

"afficher les 256 couleur
set t_Co=256

" Activer le coloration du curseur
set cursorline
set cursorcolumn

au InsertEnter * set nocursorline
au InsertEnter * set nocursorcolumn
au InsertLeave * set cursorline
au InsertLeave * set cursorcolumn

"highlight CursorLine                    cterm=none ctermbg=StatusLine
highlight CursorLine                    cterm=none ctermbg=LightGray
highlight CursorColumn                  cterm=none ctermbg=DarkGray

" Affichee en surbrillance les recherche
"set hlsearch
 "Defini la recherche en incremental
"set incsearch
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails = 1
