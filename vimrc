" Automatically manage plugins with pathogen
" https://github.com/tpope/vim-pathogen
execute pathogen#infect()

" https://github.com/kien/ctrlp.vim
" https://github.com/tpope/vim-fireplace.git
" https://github.com/nathanaelkane/vim-indent-guides
" https://github.com/mileszs/ack.vim
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
" map E :%!expand -4
map E :retab
map S :%s/\s\+$//
map !dh :.!date +\%Y-\%m-\%d<enter>o==========<esc>
map !a :Ack! 
map !af :AckFile! 

" switch tabs
map <c-Left> :tabp
map <c-Right> :tabn
map tp :tabp
map tn :tabn
map tt :tab sball


" ignore files when searching
set wildignore+=*/tmp/*,*/build/*,*/target/*,*.so,*.swp,*.zip,*.class
" launch ctrlp with ctrl-t, weirdo
let g:ctrlp_map = '<c-t>'
" launch ctrlp in mixed mode to show local files and recents, etc
let g:ctrlp_cmd = 'CtrlPMixed'
" only search file names
let g:ctrlp_by_filename = 1

" automatically launch ctrlp at start
" autocmd VimEnter * CtrlPMixed

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

"bufdo tab split
"tab sball

