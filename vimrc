" Automatically manage plugins with pathogen
" https://github.com/tpope/vim-pathogen
execute pathogen#infect()

" https://github.com/tpope/vim-fireplace.git
" https://github.com/nathanaelkane/vim-indent-guides
" https://github.com/tpope/vim-surround

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
map E :retab
map S :%s/\s\+$//
map !dh :.!date +\%Y-\%m-\%d<enter>o==========<esc>

" switch tabs
map <c-Left> :tabp
map <c-Right> :tabn
map tp :tabp
map tn :tabn
map tt :tab sball

" ignore files when searching
set wildignore+=*/tmp/*,*/build/*,*/target/*,*.so,*.swp,*.zip,*.class

" trim trailing whitespace on write
autocmd BufWritePre * if (index(['vim'], &ft) < 0) | :%s/\s\+$//e

" retab automatically on write
" autocmd BufWritePre * if (index(['make', 'vim'], &ft) < 0) | :retab

" indent guides
let g:indent_guides_guide_size=1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  ctermbg=Blue
hi IndentGuidesEven ctermbg=Blue

if executable('ag')
    " Note we extract the column as well as the file and line number
    " set grepprg=ag\ --nogroup\ --nocolor\ --column
    set grepprg=ag\ --vimgrep\ $*
    set grepformat=%f:%l:%c%m
endif

map <c-T> :tabfind **/*

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR><CR>

" navigate quickfix list from grep
nmap <silent> <c-Down> :cnext<CR>
nmap <silent> <c-Up> :cprev<CR>

