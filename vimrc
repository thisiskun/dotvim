" for vundle {{{
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:

Bundle 'kchmck/vim-coffee-script'
Bundle 'sjl/gundo.vim'
Bundle 'gregsexton/MatchTag'
Bundle 'godlygeek/tabular'
Bundle 'thisiskun/snipmate-snippets'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim.git'
Bundle 'tsaleh/vim-align.git'
" Bundle 'skammer/vim-css-color.git'
Bundle 'tpope/vim-fugitive.git'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-unimpaired.git'
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-repeat.git'
Bundle 'tpope/vim-surround.git'
Bundle 'tpope/vim-markdown'
Bundle 'vim-scripts/loremipsum.git'
Bundle 'vim-scripts/matchit.zip.git'
Bundle 'scrooloose/nerdtree.git'
Bundle 'Lokaltog/vim-powerline.git'
Bundle 'vim-scripts/ruby-matchit.git'
Bundle 'msanders/snipmate.vim.git'
Bundle 'ervandew/supertab.git'
Bundle 'majutsushi/tagbar.git'
Bundle 'tomtom/tcomment_vim.git'
Bundle 'altercation/vim-colors-solarized.git'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'larssmit/vim-getafe'
Bundle 'rson/vim-conque.git'
Bundle 'drmingdrmer/xptemplate.git'
Bundle 'vim-scripts/YankRing.vim.git'
Bundle 'mattn/zencoding-vim.git'
Bundle 'chrisbra/NrrwRgn'
Bundle 'skalnik/vim-vroom'
Bundle 'regedarek/ZoomWin'
" vim-scripts repos
" Bundle 'L9'
" Bundle 'FuzzyFinder'
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
" }}}

" basic config {{{
set dictionary+=/usr/share/dict/words
" colorscheme solarized " colorscheme solarized
set undodir=~/.vimundodir
set directory=~/.vimbackup
set modelines=0 " I never user modelines
set number " always show line number
set background=dark " background dark
set tabstop=2 " default expand tab to 2 spaces
set shiftwidth=2
set softtabstop=2
set expandtab
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,latin1 "file encodings
set encoding=utf-8 " encoding
set scrolloff=3 " 光标上下两侧保留的可见行数
set autoindent " 自动缩进
set copyindent " copy the previous indentation on autoindenting
set title " change the terminal's title
set noshowmode " show mode
set showcmd
set hidden " 未保存buffers的时候可以切换
set wildmenu " 增强命令行补全
set wildmode=list:longest
set novisualbell " 关闭屏幕闪烁
set cursorline " hightline the cursorline
set ttyfast
set ruler " ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber " new in 7.3
set undofile " new in 7.3
let mapleader = "," " change default mapleader to ,
let maplocalleader = "\\"
set ignorecase " for search
set smartcase " for search
set gdefault " default global replace
set incsearch " 实时搜索
set showmatch " 显示匹配
set hlsearch " heightline search results
set wrap " wrap text
set textwidth=79
set formatoptions=qrnl
set colorcolumn=85
au FocusLost * :wa
set mouse=a
set wildignorecase
set t_Co=256
highlight MatchParen ctermfg=red
" }}}

" key bindings {{{

" Fn keys {{{
inoremap <F1> :NERDTreeToggle<CR>
nnoremap <F1> :NERDTreeToggle<CR>
vnoremap <F1> :NERDTreeToggle<CR>
nnoremap <F2> :TagbarToggle<CR>
" nnoremap <silent> <F3> :YRShow<CR>
" inoremap <silent> <F3> <ESC>:YRShow<CR>
nnoremap <F3> :CtrlPMRUFiles<cr>
nnoremap <F4> :CtrlPBuffer<CR>
nnoremap <F5> :CtrlP<CR>
nnoremap <F6> :CtrlPTag<CR>
nnoremap <F7> :GundoToggle<CR>
" }}}

nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" 打开 ack
nnoremap <leader>a :Ack 
nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>
nnoremap <leader>q gqip
" 选择黏贴内容
nnoremap <leader>v V`]
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" quicker escaping
inoremap jj <ESC>
" working with split windows
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" do not use the arrow keys and esc
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <esc> <nop>
nnoremap j gj
nnoremap k gk
nnoremap <leader><space> :noh<cr>
nmap <tab> %
vmap <tab> %
nnoremap <space> za
" use normal regexes
nnoremap / /\v
vnoremap / /\v
" 变大写
nnoremap <leader>U vawUea
" 变小写
nnoremap <leader>u vawuea
" strip all trailing whitespaces in the current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" use :w!! to write to a file using sudo if you forgot to 'sudo vim file'
" (it will prompt for sudo password when writing)
cnoremap w!! %!sudo tee > /dev/null %
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L $
nnoremap <leader>z :ZoomWin<cr>
nnoremap <leader>cd :cd %:p:h<cr>
nnoremap <leader>q gqip
inoremap <s-enter> <esc>o
inoremap <c-s-enter> <esc>O
nnoremap <leader>z :ZoomWin<cr>
inoremap <c-s> <esc>:w<cr>
nnoremap <c-s> :w<cr>
" }}}

" for fugitive {{{
autocmd User fugitive
  \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
  \   nnoremap <buffer> .. :edit %:h<CR> |
  \ endif
autocmd BufReadPost fugitive://* set bufhidden=delete
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
" }}}

" vimscript file settings {{{
augroup filetype_vim
  au!
  au FileType vim setlocal foldmethod=marker
augroup END
" }}}

" thor file setting {{{
augroup filetype_thor
  autocmd!
  autocmd BufRead,BufNewFile *.thor setlocal ft=ruby
augroup END
" }}}

" for supertab {{{
let g:SuperTabRetainCompletionDuration='insert'
" let g:SuperTabSetDefaultCompletionType=2
" let g:SuperTabDefaultCompletionType = "<c-p>"
autocmd FileType css,sass,scss :let b:SuperTabDefaultCompletionType = "<c-x><c-o>"
autocmd FileType js  :let b:SuperTabDefaultCompletionType = "<c-x><c-o>"
" }}}

" for ack.vim {{{
let g:ackprg="ack-grep -H --nocolor --nogroup --column --smart-case"
" }}}

" for snipmate.vim {{{
let g:snippets_dir="~/.vim/bundle/snipmate-snippets/"
" }}}

" auto command {{{

" Html file settings {{{
augroup filetype_html
  autocmd!
  autocmd FileType html nnoremap <buffer> <leader>f Vatzf
  autocmd FileType html :setlocal nowrap
  " autocmd BufWrite,BufRead *.html :normal gg=G
augroup END
" }}}

" sh file tab settings {{{
augroup sh_tab
  autocmd!
  autocmd FileType sh :setlocal noexpandtab
augroup END
" }}}

" for css key mappings {{{ 
augroup cssKeyMappings
  autocmd!
  autocmd FileType css,scss,sass inoremap <buffer> { {  }<esc>hi
  autocmd FileType css,scss,sass inoremap <buffer> : : ;<esc>i
augroup END
" }}}

" }}}

" for Powerline {{{
let g:Powerline_symbols = 'fancy'
"}}}

" for tagbar {{{
" basic {{{
let g:tagbar_autofocus = 1 " move to tagbar window when opened
let g:tagbar_sort = 0 " sorted according to source file order
" }}}

" markdown {{{
let g:tagbar_type_markdown = {
	\ 'ctagstype' : 'markdown',
	\ 'kinds' : [
		\ 'h:Heading_L1',
		\ 'i:Heading_L2',
		\ 'k:Heading_L3'
	\ ]
\ }
" }}}

" ruby {{{
let g:tagbar_type_ruby = {
    \ 'kinds' : [
        \ 'm:modules',
        \ 'c:classes',
        \ 'd:describes',
        \ 'C:contexts',
        \ 'f:methods',
        \ 'F:singleton methods'
    \ ]
\ }
" }}}

" }}}

" for CtrlP {{{
let g:ctrlp_cmd = 'CtrlP'
" }}}

" for tabluar {{{
if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif
" }}}

