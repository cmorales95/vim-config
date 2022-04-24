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
set hlsearch            " highlight search
set hidden              
set noerrorbells
set nowrap
set smartcase
set incsearch
set scrolloff=8         " locate the cursor 8 spaces 
" set colorcolumn=80    " add a red line representing a limit in the file
set signcolumn=yes      " this is used by linters, we have an extra column the the right to see the errors in a better way
set cmdheight=2         " give more space for displaying messages
set showmatch           
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
Plug 'junegunn/fzf.vim'                 " TODO: Pending configuration
Plug 'jiangmiao/auto-pairs'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}     " Like VSCode
Plug 'easymotion/vim-easymotion'
Plug 'yggdroot/indentline'
Plug 'preservim/nerdcommenter'


"" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'} 
Plug 'SirVer/ultisnips'
Plug 'editorconfig/editorconfig-vim'    " Read .editorconfig file and applied the rules

" git
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'           " TODO: Pending configuration

" tmux
Plug 'preservim/vimux'
Plug 'christoomey/vim-tmux-navigator'

" html
Plug 'alvan/vim-closetag'   " Close Tag Html
Plug 'tpope/vim-surround'



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
""" Navigation
map <Leader>p :tabprevious<cr>
map <Leader>n :tabnext<cr>
map <Leader>ob :Buffers<cr>

""" NerdTree
map <Leader>nt :NERDTreeFind<CR>

""" fzf.vim
let g:fzf_preview_window = 'right:50%'
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6  }  }
map <Leader>ff :Files<CR>
map <Leader>ag :Ag<CR>

""" vim-gitgutter
" nmap ]h <Plug>(GitGutterNextHunk)
" nmap [h <Plug>(GitGutterPrevHunk)


""" easymotion
nmap <Leader>; <Plug>(easymotion-s2)

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

""" NerdCommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1


