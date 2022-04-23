" init.vim 
"
" Created By: Cristian Morales
" Created At: Apr 23
" Updated At: Apr 23
"
" Links External Extension
""" nvm: https://github.com/nvm-sh/nvm
""" 



syntax on

set encoding=UTF-8
set number			" show numbers
set mouse=a			" allow use the mouse to copy sections
set clipboard=unnamedplus	" allow to copy from clipboard to vim
set relativenumber		" show us a relative number instead of static number

set tabstop=4 softtabstop=4	" representation of a tab
set shiftwidth=4		" no idea
set expandtab			" tab using < >
set smartindent         " use a righ indentation allow to programming languages
set nohlsearch          " when you search and found a result, you press enter and the value that you selected before will be highlighting
set hidden              
set noerrorbells
set nowrap
set smartcase
set incsearch
set scrolloff=8         " locate the cursor 8 spaces 
" set colorcolumn=80    " add a red line representing a limit in the file
set signcolumn=yes      " this is used by linters, we have an extra column the the right to see the errors in a better way
set cmdheight=2         " give more space for displaying messages
set showmatch           " show the pair () {} []
set nobackup
set nowritebackup

" Plugins
call plug#begin('~/.vim/plugged')

" themes
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'        " theme of the bottom bar
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'


" IDE
" Plug 'nvim-lua/popup.nvim'
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
"" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'} 
    " :CocInstall coc-tsserver coc-json coc-html coc-css coc-pyright coc-go

" git
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'


call plug#end()

" Plugins Configurations
colorscheme gruvbox


""" NerdTree
let NERDTreeQuitOnOpen=1			" Quit when you choose a file
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree



" Key Maps Configuration
let mapleader = " "
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>x :x<Enter>
nmap <Leader>pi :PlugInstall<Enter>
" nnoremap <leader>ps :lua

"" Custom Keys

"" IDE
""" NerdTree
nnoremap <Leader>n :NERDTreeFind<CR>

""" fzf.vim
let g:fzf_preview_window = 'right:50%'
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6  }  }
nnoremap <Leader>f :Files<CR>

""" vim-gitgutter
" nmap ]h <Plug>(GitGutterNextHunk)
" nmap [h <Plug>(GitGutterPrevHunk)

""" vim fugitive
map <Leader>gb :GBlame


""" Coc
let g:coc_global_extensions = [
    \ 'coc-snippets',
    \ 'coc-pairs',  
    \ 'coc-json',
    \ 'coc-css',
    \ 'coc-html',
    \ 'coc-tsserver',
    \ 'coc-pyright',
    \ 'coc-go',
    \ 'coc-emmet',
    \ 'coc-highlight',
    \ 'coc-prettier',
    \ 'coc-spell-checker',
    \ 'coc-git',
    \]
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
