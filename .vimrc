set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'valloric/youcompleteme'
Plugin 'junegunn/fzf'


" Select colorscheme
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

" Enable syntax
syntax enable

" Tabs and spaces
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces

" UI configuration
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]

" Vim search settings
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
nnoremap <space> za
set foldmethod=indent   " fold based on indent level

" Moving
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" highlight last inserted text
nnoremap gV `[v`]
