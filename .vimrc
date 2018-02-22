""""""""""""""""""""
"""""" BASE """"""""
""""""""""""""""""""

" VIM Configuration
" Annule la compatibilite avec l’ancetre Vi : totalement indispensable
set nocompatible
" -- Affichage
set title " Met a jour le titre de votre fenetre ou de
" votre terminal
set number " Affiche le numero des lignes
set ruler " Affiche la position actuelle du curseur
set wrap " Affiche les lignes trop longues sur plusieurs
" lignes
set scrolloff=3 " Affiche un minimum de 3 lignes autour du curseur
" (pour le scroll)
" -- Recherche
set ignorecase " Ignore la casse lors d’une recherche
set smartcase " Si une recherche contient une majuscule,
" re-active la sensibilite a la casse
set incsearch " Surligne les resultats de recherche pendant la
" saisie
set hlsearch " Surligne les resultats de recherche
" -- Beep
set visualbell " Empeche Vim de beeper
set noerrorbells " Empeche Vim de beeper
" Active le comportement ’habituel’ de la touche retour en arriere
set backspace=indent,eol,start
" Cache les fichiers lors de l’ouverture d’autres fichiers
set hidden
" Active la coloration syntaxique
syntax enable
" Active les comportements specifiques aux types de fichiers comme
" la syntaxe et l’indentation
filetype on
filetype plugin on
filetype indent on

let python_highlight_all=1

" indent 4 spaces
set softtabstop=4
set shiftwidth=4
set tabstop=4
set smarttab
set expandtab
set autoindent

" auto save
:au FocusLost * :wa
set autowrite
set autowriteall


set colorcolumn=80
highlight ColorColumn guibg=#00153E
highlight NonText guifg=#888000

" set utf8 as standard encoding
"set encoding=utf8
set encoding=utf-8

set history=1000 "remember last 100 command
set undolevels=1000 "undo 150 time max
set autoread "read files changed outside vim

"show open bracket when user type the close bracket
set showmatch
set matchtime=2
set laststatus=2

set lazyredraw "don't redraw when executing macro

" --- MAPPPING sur la virgule
let mapleader = ","
let g:mapleader = ","
let maplocalleader = ","
let g:maplocalleader = ","

"nnoremap <Esc> :w<CR><Esc>
"supprimer surlignage recherche et trailing white space sur echap
"nnoremap <Esc> :nohl<CR>:w<CR><Esc>
"nnoremap <Tab> :nohl<CR><Esc>

nnoremap Q <nop>

" --- mapping recherche sur la barre espace
map <space> /
"map <leader>f /

" --- map 0 on ^ to go to first non-blank character of the line
map 0 ^

" disable auto-comment on insert new line after a commented line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"autocmd BufWritePre * :%s/\s\+$//e

" mapping navigation entre fenetre
nnoremap <C-h> <C-w>h
let g:C_Ctrl_j='off'
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

set listchars=tab:¿\ ,eol:¬
set list

" undo backup swap directory
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backups//
set directory=~/.vim/.swaps//

set signcolumn=yes

" limit popup menu height
set pumheight=30

noremap <Right> :bn<CR>
noremap <Left> :bp<CR>
"noremap <Left> :vertical resize -1<CR>
"noremap <Right> :vertical resize +1<CR>
"noremap <Down> :resize -1<CR>
"noremap <Up> :resize +1<CR>

 " ctags -R --python-kinds=-i --fields=+iaS --language-force=python -f mw_tags ~/01_Workspace/mw_dev_tools/work/sources
set tags=./tags
set tags+=~/00_Tools/working_tags/mw_tags

""""""""""""""""""""
""""" PLUGINS """"""
""""""""""""""""""""

"" ------ VUNDLE -----------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" General plugins
Plugin 'jlanzarotta/bufexplorer'
Plugin 'lilydjwg/colorizer'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
"Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Yggdroot/indentLine'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mhinz/vim-startify'
"Plugin 'thaerkh/vim-workspace'
"Plugin 'mbbill/undotree'
Plugin 'tpope/vim-surround'
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
"Plugin 'vim-syntastic/syntastic'
Plugin 'vim-scripts/SearchComplete'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'benmills/vimux'
Plugin 'editorconfig/editorconfig-vim'
"Plugin 'w0rp/ale'
Plugin 'thiagoalessio/rainbow_levels.vim'

" Plugins for C/C++
Plugin 'vim-scripts/a.vim'
Plugin 'vim-scripts/c.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'vim-scripts/OmniCppComplete'
"Plugin 'justinmk/vim-syntax-extra'

" Plugins for Qt
Plugin 'kosl90/qt-highlight-vim'

"Plugin for Python
Plugin 'python-mode/python-mode'

" Plugins for Javascript
Plugin 'jelera/vim-javascript-syntax'

"Plugin for HTML
Plugin 'alvan/vim-closetag'

" Plugins for Node.js
" see https://github.com/nodejs/node/wiki/Vim-Plugins

" Color scheme
"Plugin 'Nyio/Nova'
Plugin 'trevordmiller/nova-vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'arcticicestudio/nord-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"autocmd vimenter * NERDTree
"autocmd vimenter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType=="primary") | q | endif

"autocmd vimenter * Tagbar

"au VimEnter * IndentGuidesToggle
"let g:indent_guides_guide_size=1
"set ts=4 sw=4 et

au VimEnter * IndentLinesToggle
"let g:indentLine_color_gui = '#A4E57E'
"let g:indentLine_color_gui = '#7EA4E5'
let g:indentLine_color_gui = '#2152A5'
"let g:indentLine_char = '|'
let g:indentLine_char = '¦'

let g:load_doxygen_syntax=1

let g:NERDTreeWinPos = "left"

" bufexplorer
map <S-Tab> :BufExplorerHorizontalSplit<CR>
"map <leader>be :BufExplorerHorizontalSplit<CR>

" airline
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1

" tagbar
let g:tagbar_left = 0

" vim-cpp-enhanced-highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

" syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers = ['pylint']
"let g:syntastic_python_checkers = []

" Rainbow Parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"python-mode
let g:pymode_rope_goto_definition_bind = "<C-]>" " Override go-to.definition key shortcut to Ctrl-]
let g:pymode_breakpoint = 1
let g:pymode_python = 'python3'
let g:pymode_folding = 0
let g:pymode_doc = 0
let g:pymode_lint = 0

" vim-tmux-navigator
let g:tmux_navigator_save_on_switch = 2

" editor-config
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" YouCompleteMe
let g:ycm_python_binary_path='/usr/bin/python3'
let g:ycm_autoclose_preview_window_after_completion=1

" ALE
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_set_highlights = 0


""""""""""""""""""""
"""" FUNCTIONS """""
""""""""""""""""""""
function! s:header_c()
    execute "normal! ggi/**"
    execute "normal! o * @file " . expand("%:t")
    execute "normal! o * @class "  . substitute(expand("%:t"), "\\.cpp", "", "g")
    execute "normal! o * @author Valognes Nicolas (nicolas.valognes@resolutionspectra.com)"
    execute "normal! o * @copyright Copyright Resolution Spectra Systems Corp (13 chemin du Vieux Chene, Meylan 38240 France)"
    execute "normal! o * @version 1.0"
    execute "normal! o**/"
    execute "normal! ggvG="
    execute "normal! G"

    execute "normal! o#include \"" . expand("%:t")
    execute "normal! 2hcwh\""
    execute "normal! o"
    execute "normal! o" . substitute(expand("%:t"), "\\.cpp", "", "g")
    execute "normal! A::" . substitute(expand("%:t"), "\\.cpp", "()", "g")
    execute "normal! o{"
    execute "normal! o}"
    execute "normal! o"
    execute "normal! o" . substitute(expand("%:t"), "\\.cpp", "", "g")
    execute "normal! A::~" . substitute(expand("%:t"), "\\.cpp", "()", "g")
    execute "normal! o{"
    execute "normal! o}"
    execute "normal! o"
    execute "normal! 6k"
endfunction

function! s:doxy_header_h()
    let gatename = "_" . substitute(toupper(expand("%:t")), "\\.", "_", "g") . "_"
    execute "normal! Go#endif"
    execute "normal! ggi/**"
    execute "normal! o * @file " . expand("%:t")
    execute "normal! o * @class "  . substitute(expand("%:t"), "\\.h", "", "g")
    execute "normal! o * @headerfile "
    execute "normal! o * @author Valognes Nicolas (nicolas.valognes@resolutionspectra.com)"
    execute "normal! o * @copyright Copyright Resolution Spectra Systems Corp (13 chemin du Vieux Chene, Meylan 38240 France)"
    execute "normal! o * @version 1.0"
    execute "normal! o * @brief This class describe..."
    execute "normal! o * <br>Reference documents : <a href=\"FILE_PATH\">FILE_NAME</a>"
    execute "normal! o * <br>"
    execute "normal! o**/"
    "execute "normal! o"
    execute "normal! o#ifndef " . gatename
    execute "normal! o#define " . gatename . " "
    execute "normal! o"
    execute "normal! oclass " . substitute(expand("%:t"), "\\.h", "", "g")
    execute "normal! o{"
    execute "normal! opublic:"
    execute "normal! o" . substitute(expand("%:t"), "\\.h", "();", "g")
    execute "normal! o~" . substitute(expand("%:t"), "\\.h", "();", "g")
    execute "normal! o"
    execute "normal! oprivate:"
    execute "normal! o};"
    execute "normal! o"
    execute "normal! Gvgg="
endfunction

function! s:includeVarDoxygenComment()
    execute "normal! A //!<  "
    execute "normal! $"
    startreplace
endfunction

function! DelTagOfFile(file)
  let fullpath = a:file
  let cwd = getcwd()
  let tagfilename = cwd . "/tags"
  let f = substitute(fullpath, cwd . "/", "", "")
  let f = escape(f, './')
  let cmd = 'sed -i "/' . f . '/d" "' . tagfilename . '"'
  let resp = system(cmd)
endfunction

function! UpdateTags()
  let f = expand("%:p")
  let cwd = getcwd()
  let tagfilename = cwd . "/tags"
  let cmd = 'ctags -a -f ' . tagfilename . ' --c++-kinds=+p --fields=+iaS --extra=+q ' . '"' . f . '"'
  call DelTagOfFile(f)
  let resp = system(cmd)
endfunction

function! s:headerPythonPEP8()
    execute "normal! ggO# -*- coding: utf-8 -*-"
endfunction

function! s:pythonComment()
    execute "normal! O# TODO - N.V - "
    let currentdate=strftime("%Y-%m-%d")
    execute "normal! A" . currentdate
    execute "normal! A -  "
    execute "normal! $"
    startreplace
endfunction

function! s:pyDebug()
  execute "normal! O### tempo"
  execute "normal! omy_file = open('/home/developer/98_Tmp/pydebug.txt', 'w')"
  execute "normal! omy_file.write(str(result))"
  execute "normal! omy_file.close()"
endfunction

function! s:jsonFormat()
  execute ":%s/'/\"/g | w | :%!python -m json.tool"
endfunction


""""""""""""""""""""
""""""" GUI """"""""
""""""""""""""""""""
if has("gui_running")
    if has("win32") "Windows options here
        " police
        set guifont=Consolas:h8:cANSI
        set antialias
    else
        if has("unix")
            let s:uname = system("uname")
            if s:uname == "Darwin\n"
                "Mac options here
            else
                "set guifont=Monospace\ 8
                set guifont=Roboto\ Mono\ For\ Powerline\ 8
                set antialias
            endif
        endif
    endif

    " GUI is running or is about to start.
    " set gvim window size (for an alternative on Windows, see simalt below).
    "set lines=45 columns=130

    " visuel longueur ligne 120
    set colorcolumn=80
    highlight ColorColumn guibg=#00153E
    highlight NonText guifg=#888000

    "hide toolsbar
    set guioptions-=T
    " hide menubar
    set guioptions-=m
    "hide Right hand scrollbar
    set guioptions-=r
    set guioptions-=L

    set cursorline
    "set cursorcolumn
    "hi Cursor guibg=#528bff ctermbg=69 gui=NONE cterm=NONE
endif


""""""""""""""""""""""
" colors and functions
""""""""""""""""""""""
set t_Co=256
"set termguicolors
set background=dark

colorscheme Tomorrow-Night
let g:airline_theme='tomorrow'
"colorscheme nord
"let g:airline_theme='nord'
set cursorline

au BufRead,BufNewFile *.qss setfiletype css "syntax color for qt .css file
au BufRead,BufNewFile *.qrc setfiletype xml "syntax color for qt .qrc file
au BufRead,BufNewFile *.md setfiletype markdown.pandoc

nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F3> :TagbarToggle<CR>
nnoremap <F4> :nohl<CR>
nnoremap <F5> :%s/\s\+$//e<CR>:w<CR>

""""""""" if C++ """"""""""
"nnoremap <F6> :call <SID>doxy_header_h()<CR>
"nnoremap <F7> :call <SID>header_c()<CR>
"nnoremap <F8> :call UpdateTags()<CR>

""""""""" if Python """"""""""
nnoremap <F6> :call <SID>headerPythonPEP8()<CR>
""""""""""""""""""""""""""""""


nnoremap <leader>t :tag <c-r><c-w><cr>
nnoremap <leader>py :call <SID>headerPythonPEP8()<CR>
nnoremap <leader>pyc :call <SID>pythonComment()<CR>
nnoremap <leader>deb :call <SID>pyDebug()<CR>
nnoremap <Leader>do :Dox<CR>
nnoremap <leader>js :%!python -m json.tool<CR>
nnoremap <leader>json  :%s/'/\"/g <CR>:w<CR>:%s/None/"None"/g<CR>:%!python -m json.tool<CR>
nnoremap <Leader>dov :call <SID>includeVarDoxygenComment()<CR>
nnoremap <Leader>del :call <SID>deleteVarUnderCursor()<CR>
nnoremap <leader>lev :RainbowLevelsToggle<CR>
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
map <Leader>vs :VimuxInterruptRunner<CR>

"inoremap print print("[NVS] ")<Esc>hi
"inoremap pprint print("[NVS]")<Esc>opprint()<Esc>i

" to work in terminal
au VimEnter * IndentLinesToggle
let g:indentLine_color_gui = '#2152A5'
let g:indentLine_char = '¦'

"set splitbelow
"set splitright

"set foldmethod=indent
"set foldlevel=99
