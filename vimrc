runtime bundle/vim-pathogen/autoload/pathogen.vim
"call pathogen#runtime_append_all_bundles()
let g:pathogen_disabled = ["nerdcommenter", "vim-afterimage", "vim-vividchalk"]
call pathogen#infect()
syntax on
filetype on
filetype indent on
filetype plugin on

colo 256-grayvim

set list listchars=tab:··,trail:·,extends:»
set nocompatible
set backspace=indent,eol,start
set number
set smartindent autoindent
set tabstop=2
set shiftwidth=2
set expandtab
"set pastetoggle=<CTRL-v>
set wrap!
set directory=/tmp
set hidden
set incsearch
set ignorecase
set smartcase
set encoding=utf-8
set fileencoding=utf-8

"set statusline=%2*%n\|%<%*%-.40F%2*\|\ %2*%M\ %3*%=%1*\ %1*%2.6l%2*x%1*%1.9(%c%V%)%2*[%1*%P%2*]%1*%2B
"set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

set wildmenu
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif

set lazyredraw                " don't redraw when don't have to
set more
set showmode
set showcmd
set history=200
set linebreak
"set cmdheight=2               " command line two lines high
set undolevels=1000           " 1000 undos
set updatecount=100           " switch every 100 chars
set complete=.,w,b,u,U,t,i,d  " do lots of scanning on tab completion
"set ttyfast                   " we have a fast terminal
set noerrorbells              " No error bells please
set vb t_vb=
set shell=bash
set autoread                  " watch for file changes
"set autochdir                 " change working dir to file dir

"Now we just enable the menu and pydoc preview to get the most useful information out of the code completion:
"set completeopt=menuone,longest,preview
" Set Omni completion filetype associations
"autocmd FileType html :set omnifunc=htmlcomplete#CompleteTags
"au FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
"au FileType xhtml,xml so ~/.vim/ftplugin/html_autoclosetag.vim

let g:CommandTMaxHeight=6
let g:EasyGrepHidden=1
let g:EasyGrepIgnoreCase=0
let g:EasyGrepRecursive=1
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']
let g:NERDTreeDirArrows=1
let g:NERDTreeMinimalUI=1
let g:pydiction_location = '/home/corus-dev/.vim/pydiction-1.2/complete-dict'
let Tlist_Use_Left_Window = 0
let Tlist_Use_Horiz_Window = 0
let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 42
let g:syntastic_auto_loc_list=1

" Set visual mode indent
vnoremap < <gv
vnoremap > >gv

"set tags=tags;/

"w0 windows-off: hides all screen decorations
map <leader>w0 :NERDTreeClose<CR>:QuickfixsignsDisable<CR>:set number!<CR>
"w1 windows-on: shows all screen decorations
map <leader>w1 :NERDTree<CR>:QuickfixsignsEnable<CR>:set number<CR>
"
"next buffer
nnoremap <silent> <F3> :bp<CR>
"prev buffer
nnoremap <silent> <F4> :bn<CR>
"write current buffer
nnoremap <silent> <F2> :w<CR>
"write all buffers
nnoremap <silent> <F6> :wa<CR>

"ra respace-all: retab, remove trailing whitespace and 
"empty lines, put a newline at the end of the file
map <leader>ra :retab<CR>:%s/\s*$//<CR>:g/^$/d<CR>GA<CR><ESC>
"rs re-space: respace-all preserving empty lines
map <leader>rs :retab<CR>:%s/\s*$//<CR>GA<CR><ESC>
"rt retab: change tabs to spaces
map <silent> <leader>rt :retab<CR>
"rw remove (trailing) whitespace
map <leader>rw :%s/\s*$//<CR>
"rl remove (empty) lines
map <leader>rl :g/^$/d<CR>

"nnoremap <silent> <F8> :TlistToggle<CR>
map <leader>n :execute 'NERDTreeToggle ' . getcwd()<CR>

"autocmd VimEnter * TlistOpen
autocmd VimEnter * NERDTree
"switch to buffer window on open
"autocmd VimEnter * wincmd p
" if the last window is NERDTree, then close Vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif 

" Set current working directory based on current file.
"autocmd BufEnter * lcd %:p:h
"change the signs gutter background to vimgray-256 bgcolor
:hi SignColumn ctermbg=235

function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

