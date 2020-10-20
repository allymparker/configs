set shell=/bin/bash
set encoding=utf-8

" indent
set tabstop=4 " tabs shown as 4 spaces wide
set shiftwidth=4 " indents are 4 spaces
set expandtab " <Tab> inserts spaces
" set autoindent " Copy indentation from previous line.
filetype plugin indent on

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" lines
set relativenumber
set number
set nowrap

" editing settings
set backspace=2

"search options
set hls 
set ignorecase " ignore case when searching
set smartcase " ignore case, unless search has an Uppercase letter
set incsearch
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR>

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
call plug#end()

" nerdtree
let NERDTreeMinimalUI = 1

" bindings
nnoremap <Leader>n :NERDTreeToggle<Enter>

" Remove newbie crutches in Normal Mode
nnoremap <Down> :echo "N00B!"<CR>
nnoremap <Left> :echo "N00B!"<CR>
nnoremap <Right> :echo "N00B!"<CR>
nnoremap <Up> :echo "N00B!"<CR>

" Remove newbie crutches in Visual Mode
vnoremap <Down> :echo "N00B!"<CR>
vnoremap <Left> :echo "N00B!"<CR>
vnoremap <Right> :echo "N00B!"<CR>
vnoremap <Up> :echo "N00B!"<CR>

" Always keep current line vertically centered
augroup VCenterCursor
  au!
    au BufEnter,WinEnter,WinNew,VimResized *,*.*
            \ let &scrolloff=winheight(win_getid())/2
augroup END
