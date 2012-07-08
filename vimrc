" for vundle {{{
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:

Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim.git'
Bundle 'tsaleh/vim-align.git'
Bundle 'skammer/vim-css-color.git'
Bundle 'tpope/vim-fugitive.git'
Bundle 'tpope/vim-haml'
Bundle 'vim-scripts/loremipsum.git'
Bundle 'vim-scripts/matchit.zip.git'
Bundle 'vim-scripts/mru.vim.git'
Bundle 'scrooloose/nerdtree.git'
Bundle 'Lokaltog/vim-powerline.git'
Bundle 'vim-scripts/ruby-matchit.git'
Bundle 'msanders/snipmate.vim.git'
Bundle 'ervandew/supertab.git'
Bundle 'majutsushi/tagbar.git'
Bundle 'vim-scripts/taglist.vim.git'
Bundle 'tomtom/tcomment_vim.git'
Bundle 'tpope/vim-unimpaired.git'
Bundle 'altercation/vim-colors-solarized.git'
Bundle 'rson/vim-conque.git'
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-repeat.git'
Bundle 'tpope/vim-surround.git'
Bundle 'drmingdrmer/xptemplate.git'
Bundle 'vim-scripts/YankRing.vim.git'
Bundle 'mattn/zencoding-vim.git'
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

" Basic config {{{
colorscheme solarized " colorscheme solarized
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
set showmode " show mode
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
let localmapleader = "\\"
" }}}

" abbreviation {{{
iabbrev @@ chenchaokun@gmail.com
iabbrev ckblog thisiskun.github.com
" }}}

" key blind {{{
inoremap <F1> :NERDTreeToggle<CR>
nnoremap <F1> :NERDTreeToggle<CR>
vnoremap <F1> :NERDTreeToggle<CR>
nnoremap <F2> :TlistToggle<CR>
nnoremap <silent> <F3> :YRShow<CR>
inoremap <silent> <F3> <ESC>:YRShow<CR>
nnoremap <F4> :CtrlP<CR>
nnoremap <F5> :MRU<cr>

nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>a :Ack
nnoremap <leader>ft Vatzf
nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>
nnoremap <leader>q gqip
nnoremap <leader>v V`]
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" quickr escaping
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
" nnoremap H ^
" nnoremap L $
nnoremap <leader><space> :noh<cr>
nmap <tab> %
vmap <tab> %
nnoremap <space> za
nnoremap <space> za
" use normal regexes
nnoremap / /\v
vnoremap / /\v
nnoremap <leader>U vawUea
nnoremap <leader>u vawuea
" strip all trailing whitespaces in the current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" fold tag
nnoremap <leader>ft Vatzf
" select the text that was just pasted
nnoremap <leader>v V`]
" }}}

" Tag list (ctags) {{{
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口
" }}}

" for fugitive {{{
autocmd User fugitive
  \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
  \   nnoremap <buffer> .. :edit %:h<CR> |
  \ endif
autocmd BufReadPost fugitive://* set bufhidden=delete
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
" }}}

" Vimscript file settings {{{
augroup filetype_vim
  au!
  au FileType vim setlocal foldmethod=marker
augroup END
" }}}

" Html file settings {{{
augroup filetype_html
  autocmd!
  autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
  autocmd FileType html :setlocal nowrap
  autocmd BufWrite,BufRead *.html :normal gg=G
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
autocmd FileType css :setlocal g:SuperTabDefaultCompletionType="<c-x><c-o>"
autocmd FileType js :setlocal g:SuperTabDefaultCompletionType = "<c-x><c-o>"
" }}}

" for ack.vim {{{
let g:ackprg="ack-grep -H --nocolor --nogroup --column --smart-case"
" }}}

