
"set errorformat=%f:%l:%t:%n:%m,%s:\ %f:%l:%t:%n:%m
set errorformat=%f:%l:%t:%n:%m


"w0 windows-off: hides all screen decorations and clears the status message
map <leader>w0 :NERDTreeClose<CR>:QuickfixsignsDisable<CR>:set nonumber<CR>:only<CR>:set noruler<CR>:!<CR><CR>
"w1 windows-on: shows all screen decorations
map <leader>w1 :QuickfixsignsEnable<CR>:set number<CR>:NERDTree %<CR>:wincmd p<CR>:set ruler<CR>
"next buffer
nnoremap <silent> <F3> :bp<CR>
"prev buffer
nnoremap <silent> <F4> :bn<CR>
"write current buffer
nnoremap <silent> <F2> :w<CR>
"write all buffers
nnoremap <silent> <F6> :wa<CR>

" Set visual mode indent
vnoremap < <gv
vnoremap > >gv

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

map <leader>lul :cfile ~/logs/upload.log<CR>:copen<CR>:set winheight=50<CR>:cwindow<CR>G<CR>
map <leader>lll :cfile ~/logs/local.log<CR>:copen<CR>:wincmd _<CR>:cwindow<CR>G<CR>
map <leader>ccc :cfile ~/logs/central.log<CR>:copen<CR>:set winheight=50<CR>:cwindow<CR>G<CR>

map <leader>LL :lwindow<CR>
map <leader>CC :copen<CR>

map <leader>n :execute 'NERDTreeToggle ' . getcwd()<CR>
"open NERDTree at startup
"autocmd VimEnter * NERDTree
"switch to buffer window on open
autocmd VimEnter * wincmd p
" if the last window is NERDTree, then close Vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif 

colo 256-grayvim
"change the signs gutter background to vimgray-256 bgcolor
:hi SignColumn ctermbg=235
":hi WarningMsg term=bold cterm=bold ctermfg=160 guifg=Orange
:hi WarningMsg term=underline ctermfg=208 guifg=#ffa0a0


function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

