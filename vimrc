" https://github.com/kien/ctrlp.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim

filetype off
syntax on
set background=dark
set nocompatible

set binary
set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4
set tabstop=4
set nocindent
set ruler
set showmode
set number
set showmatch
"  set wrapmargin=1
set backspace=indent,eol,start

set cc=80
hi ColorColumn ctermbg=darkred guibg=darkred

map W :.,$!fold -w75 -s
map E :%!expand -4
map S :%s/\s\+$//
map <c-Left> :tabp
map <c-Right> :tabn

" try to ignore class files in ctrlp
let g:ctrlp_custom_ignore = '.*\.class'
" launch ctrlp with ctrl-t, weirdo
let g:ctrlp_map = '<c-t>'
" launch ctrlp in mixed mode to show local files and recents, etc
let g:ctrlp_cmd = 'CtrlPMixed'

" fire off ctrlp at start
" autocmd VimEnter * CtrlPMixed

" trim trailing whitespace on write
autocmd BufWritePre * :%s/\s\+$//e
