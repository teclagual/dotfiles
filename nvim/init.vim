" Options
syntax on
set ignorecase
set smartcase                 " Las búsquedas ignoran case a menos que haya una mayúscula en la búsqueda
set updatetime=100
set background=dark
set expandtab                 " para que inserte espacios cuando le piques TAB
set shiftwidth=3              " cantidad de espacios cuando presionas TAB
set softtabstop=3             " cantidad de espacios cuando presionas TAB
set number                    " agrega números a las líneas
set mouse=a                   " Para poder usar el mouse scroll y click
set wildmenu                  " Para que el autocomplete en command-line mode muestre las opciones
set autoread                  " si se cambia un archivo mientras está abierto en nvim, lo vuelve a leer
set listchars=tab:→\ ,eol:↲,trail:-
set laststatus=2
set hidden                    " para poder cambiar de buffer sin que me pida guardar

let g:python_host_prog  = '/user/local/bin/python'

" Vundle
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
Plugin 'patstockwell/vim-monokai-tasty'
Plugin 'ap/vim-buftabline'
Plugin 'neoclide/coc.nvim'

call vundle#end()            " required
filetype plugin indent on    " required

" Bindings
let mapleader = "\<Space>"

" Tab navigation
nnoremap <Leader>t1 1gt
nnoremap <Leader>t2 2gt
nnoremap <Leader>t3 3gt
nnoremap <Leader>t4 4gt
nnoremap <Leader>t5 5gt
nnoremap <Leader>t6 6gt
nnoremap <Leader>tn :tabnew<Space>

" Buffers
nnoremap <Leader><Tab> :bn<CR>
nnoremap <Leader>1 :br<CR>
nnoremap <Leader>2 :br<CR>:bn<CR>
nnoremap <Leader>3 :br<CR>:2bn<CR>
nnoremap <Leader>4 :br<CR>:3bn<CR>
nnoremap <Leader>5 :br<CR>:4bn<CR>
nnoremap <Leader>6 :br<CR>:5bn<CR>
nnoremap <Leader>q :bd<CR>
nnoremap <Leader>wq :w<CR>:bd<CR>

" jump to render()
nnoremap <leader>re /render()<CR>:noh<CR>z.

" jump to state =
nnoremap <leader>st /state =<CR>:noh<CR>

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
" ws: shorter
nnoremap <leader>ws :resize -10<CR>
" wt: taller
nnoremap <leader>wt :resize +10<CR>
" ww: wider
nnoremap <leader>ww :vertical resize +20<CR>
" wn: narrower
nnoremap <leader>wn :vertical resize -20<CR>

" Disable left and right arrows
inoremap <Left> <Nop>
inoremap <Right> <Nop>

command -nargs=? ReactClassComponent :execute "normal :read ~/.config/nvim/templates/ReactClassComponent.js<cr>kdd"
command -nargs=? ReactPureComponent :execute "normal :read ~/.config/nvim/templates/ReactPureComponent.js<cr>kdd"

" vim-closetag
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.js,*.jsx"

" NERDTree
let g:NERDTreeIgnore=['node_modules$[[dir]]']

" Ale Linter
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'

" vim-polyglot
let g:javascript_plugin_flow = 1

" coc.nvim
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Colors
" colorscheme vim-monokai-tasty
colorscheme monotone

source $HOME/.config/nvim/searchblink.vim
