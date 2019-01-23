" Automatically manage plugins with pathogen
" https://github.com/tpope/vim-pathogen
execute pathogen#infect()
call pathogen#helptags()
            

" https://github.com/tpope/vim-fireplace
" https://github.com/nathanaelkane/vim-indent-guides
" https://github.com/tpope/vim-surround
" https://github.com/tpope/vim-sexp-mappings-for-regular-people
" https://github.com/guns/vim-sexp
" https://github.com/tpope/vim-repeat
" https://github.com/junegunn/fzf.vim
" /usr/local/opt/fzf
" https://github.com/szw/vim-tags.git
" https://github.com/tpope/vim-unimpaired

" Matchit plugin
" http://www.vim.org/scripts/script.php?script_id=39

let mapleader = " "

" quicker command mode
map ; :

" set gsp files to be treated like xml for matching
au BufRead,BufNewFile *.gsp set filetype=xml

if has("gui_running")
    colorscheme macvim
else
    colorscheme default
endif

set background=dark
set nocompatible
set binary

syntax on

" enable spell checking
set spell
hi clear SpellBad
hi SpellBad cterm=underline

" settings for indentation
set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4
set shiftround " round off shifts to line up with tabstops
set tabstop=4
set nocindent
set textwidth=75

" smaller indents in clojure
autocmd FileType clojure setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType cucumber setlocal shiftwidth=2 tabstop=2 softtabstop=2

set ruler
set showmode
set number
set showmatch
set backspace=indent,eol,start

" I too like to live dangerously
set nobackup
set noswapfile " no more warnings about swap files

" mark 75th column
set cc=76
hi ColorColumn ctermfg=White ctermbg=Red guifg=White guibg=Red

" wrap the whole file
map <Leader>w :.,$!fold -w75 -s<CR>
" expand tabs
map <Leader>e :retab<CR>
" trim trailing spaces
map <Leader>s :%s/\s\+$//<CR>
" date header
map <Leader>dh :.!date +\%Y-\%m-\%d<enter>o==========<esc>
" upper/lower current word
map <Leader>u gUiw
map <Leader>l guiw
" change surrounding quotes
map <Leader>' cs"'
map <Leader>" cs'"

" switch tabs
map <c-Left> :tabp<CR>
map <c-Right> :tabn<CR>
map tp :tabp<CR>
map tn :tabn<CR>
map tt :tab sball<CR>

" highlight selected tab
hi TabLineFill ctermfg=Black ctermbg=White
hi TabLineSel ctermfg=Black ctermbg=Yellow
hi TabLine ctermfg=White ctermbg=Black

" ignore files when searching
set wildignore+=*/tmp/*,*/build/*,*/target/*,*.so,*.swp,*.zip,*.class,tags

" trim trailing whitespace on write
autocmd BufWritePre * if (index(['markdown', 'vim'], &ft) < 0) | :%s/\s\+$//e

" retab automatically on write
" autocmd BufWritePre * if (index(['make', 'vim'], &ft) < 0) | :retab

" indent guides
let g:indent_guides_guide_size=1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  ctermbg=DarkBlue
hi IndentGuidesEven ctermbg=DarkBlue

if executable('rg')
    set grepprg=rg\ --vimgrep\ $*
    set grepformat=%f:%l:%c%m
elseif executable('ag')
    set grepprg=ag\ --vimgrep\ $*
    set grepformat=%f:%l:%c%m
endif

" new tab
map <Leader>t :tabedit<cr>
" open file with fzf
" map <Leader>o :Files<cr>
map <Leader>o :e **/*

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR><CR>:cw<CR>
map <Leader>k :tabfind **/<C-R><C-W>.*<CR>

" Ctrl-G for grep
nnoremap <Leader>g :grep<SPACE>

" navigate quickfix list from grep
nmap <silent> <c-Down> :cnext<CR>
nmap <silent> <c-Up> :cprev<CR>

" navigate across lists, params, etc
map , /[,()\[\]:]<CR>

" cut-n-paste to system clipboard by default
set clipboard=unnamedplus

" allow word nav to stop at underscore
"set iskeyword-=_

" quick exit from insert mode
inoremap jj <ESC>

hi CursorLine   cterm=underline " ctermbg=darkgreen ctermfg=white guibg=darkgreen guifg=white
hi CursorColumn cterm=underline " ctermbg=darkgreen ctermfg=white guibg=darkgreen guifg=white
set cursorline
nnoremap <Leader>c :set cursorline!<CR>
