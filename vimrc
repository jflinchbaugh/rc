execute pathogen#infect()

" Plugins below are installde to bundle dir, but pathogen loads them now
" https://github.com/kien/ctrlp.vim
" set runtimepath^=~/.vim/bundle/ctrlp.vim
"
" https://github.com/tpope/vim-fireplace.git
" set runtimepath^=~/.vim/bundle/vim-fireplace

" https://github.com/nathanaelkane/vim-indent-guides
" set runtimepath^=~/.vim/bundle/vim-indent-guides

" Matchit plugin
" http://www.vim.org/scripts/script.php?script_id=39
" set gsp files to be treated like xml for matching
au BufRead,BufNewFile *.gsp set filetype=xml

if has("gui_running")
    colorscheme macvim
else
    colorscheme default
endif

filetype plugin on
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
set backspace=indent,eol,start

" mark 75th column
set cc=75
hi ColorColumn ctermfg=White ctermbg=Red guifg=White guibg=Red

map W :.,$!fold -w75 -s
map E :%!expand -4
map S :%s/\s\+$//
map !dh :.!date +\%Y-\%m-\%d<enter>o==========<esc>

" switch tabs
map <c-Left> :tabp
map <c-Right> :tabn
map tp :tabp
map tn :tabn
map tt :tab sball

" try to ignore class files in ctrlp
let g:ctrlp_custom_ignore = '.*\.class'
" launch ctrlp with ctrl-t, weirdo
let g:ctrlp_map = '<c-t>'
" launch ctrlp in mixed mode to show local files and recents, etc
let g:ctrlp_cmd = 'CtrlPMixed'
" only search file names
let g:ctrlp_by_filename = 1

" automatically launch ctrlp at start
" autocmd VimEnter * CtrlPMixed

" trim trailing whitespace on write
autocmd BufWritePre * :%s/\s\+$//e

" indent guides
let g:indent_guides_guide_size=1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  ctermbg=Gray
hi IndentGuidesEven ctermbg=Gray

"bufdo tab split
"tab sball

