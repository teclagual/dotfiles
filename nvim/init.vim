" ============================================================================================================
" ================================================== Options =================================================
" ============================================================================================================
syntax on

set smartcase                 " Las búsquedas ignoran case a menos que haya una mayúscula en la búsqueda
set updatetime=100
set background=dark
set expandtab                 " para que inserte espacios cuando le piques TAB
set shiftwidth=3              " cantidad de espacios cuando presionas TAB
set softtabstop=3             " cantidad de espacios cuando presionas TAB
set number                    " agrega números a las líneas
" set cursorline                " Indicador de en qué línea estás
" set cursorcolumn              " Indicador de en qué columna estás
set mouse=a                   " Para poder usar el mouse scroll y click
set wildmenu                  " Para que el autocomplete en command-line mode muestre las opciones
set autoread                  " si se cambia un archivo mientras está abierto en nvim, lo vuelve a leer
" set confirm                   " si tratas de cambiar de buffer y no lo has guardado, te pregunta qué quieres hacer con los cambios
set listchars=tab:→\ ,eol:↲,trail:-
set laststatus=2

let g:python_host_prog  = '/user/local/bin/python'
" ============================================================================================================
" ================================================== Vundle ==================================================
" ============================================================================================================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin("~/.config/nvim/bundle")

Plugin 'VundleVim/Vundle.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'scrooloose/nerdtree'
Plugin 'alvan/vim-closetag'
" Plugin 'ctrlpvim/ctrlp.vim'       " https://github.com/ctrlpvim/ctrlp.vim
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'       " https://github.com/tpope/vim-surround cs ys ds
Plugin 'tpope/vim-commentary'     " https://github.com/tpope/vim-commentary gcc:toggle comment
Plugin 'w0rp/ale'                 " https://github.com/w0rp/ale
Plugin 'airblade/vim-gitgutter'   " https://github.com/airblade/vim-gitgutter
Plugin 'Lokaltog/vim-monotone'

call vundle#end()            " required
filetype plugin indent on    " required
" <- End ->
" ============================================================================================================
" =========================================== Bindings =======================================================
" ============================================================================================================
let mapleader = "\<Space>"

nnoremap <Leader>ls :ls<CR>:b<Space>

" Up y Down arrows mueven lines
inoremap <Up> <Esc>ddkPi
inoremap <Down> <Esc>ddpi
nnoremap <Up> ddkP
nnoremap <Down> ddp

" Easier split navigation
nnoremap <C-j> <C-W><C-j>
nnoremap <C-h> <C-W><C-h>
nnoremap <C-k> <C-W><C-k>
nnoremap <C-l> <C-W><C-l>

" Para saltar al placeholder %%% presionando ::
" imap <buffer> :: <Esc>/%%%<CR>c3l
" nmap <buffer> :: /%%%<CR>c3l

" NERDTreeToggle
nnoremap <Leader>tr :NERDTreeToggle<CR>

" ALE Linter
nnoremap <silent> <leader>an :ALENext<cr>
nnoremap <silent> <leader>ap :ALEPrevious<cr>

" source init.vim
nnoremap <leader>so :source ~/.config/nvim/init.vim<cr>

" remove highlight
nnoremap <leader>nh :noh<CR>

" window resizing
nnoremap <leader>ws :vertical resize -20<CR>
nnoremap <leader>wb :vertical resize +20<CR>

" Disable left and right arrows
inoremap <Left> <Nop>
inoremap <Right> <Nop>

command -nargs=? ReactClassComponent :execute "normal :read ~/.config/nvim/templates/ReactClassComponent.js<cr>kdd"
command -nargs=? ReactPureComponent :execute "normal :read ~/.config/nvim/templates/ReactPureComponent.js<cr>kdd"
" ============================================================================================================
" =========================================== vim-closetag ===================================================
" ============================================================================================================
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.js,*.jsx"

" ============================================================================================================
" ============================================= NERDTree =====================================================
" ============================================================================================================
let g:NERDTreeIgnore=['node_modules$[[dir]]']

" ============================================================================================================
" =========================================== Ale Linter =====================================================
" ============================================================================================================
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
" let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
" let g:ale_javascript_eslint_use_global = 1
" ============================================================================================================
" =============================================== CTRL-P =====================================================
" ============================================================================================================
" let g:ctrlp_custom_ignore = 'ios\|android\|node_modules\|DS_Store\|git'
" ============================================================================================================
" =============================================== Colors =====================================================
" ============================================================================================================
" colorscheme monotone
