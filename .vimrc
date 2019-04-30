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
" set number

let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
      let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
  let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline_theme = 'ubaryd'
" Barre de status
set laststatus=2 " Nombre de ligne de statut
"set statusline=%F%m\ %r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v]\ %=[Time:\ %{strftime(\"%H:%M\")}]

let g:airline#extensions#tmuxline#enabled = 0

" Choix de la touche d introduction du mapping additionnel
let mapleader=","

colorscheme molokai 
"let g:rehash256 = 1

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
"highlight CursorLine                    cterm=none ctermbg=LightGray
highlight CursorLine                    cterm=none ctermbg=DarkBlue
highlight CursorColumn                  cterm=none ctermbg=DarkGray

" Affichee en surbrillance les recherche
"set hlsearch
 "Defini la recherche en incremental
"set incsearch
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails = 1

" Desactiver le bip
set vb t_vb=
set paste

"supportpour GO
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set guifont=HackNerdFontComplete-Regular:h14
