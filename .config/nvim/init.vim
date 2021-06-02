
source $HOME/.config/nvim/plug-config/plugins.vim

set nocompatible
syntax enable
set tabstop=4
set autoindent
set softtabstop=4
" set cursorline
filetype plugin on
filetype indent on
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
set showcmd
set number relativenumber
set updatetime=300
" set	termguicolors

" colorscheme wal

autocmd TextChanged * if &readonly==0 && filereadable(bufname('%')) | silent update | endif
autocmd InsertLeave * if &readonly==0 && filereadable(bufname('%')) | silent update | endif

if has("win32")
   set directory=c:\\tmp,c:\\temp
elseif has("unix")
   set directory=~/.tmp
endif

let mapleader = ","
nnoremap <c-z> <nop>

" copy/paste to + buffer
vnoremap <C-c> "+y
map <C-p> "+p
map <C-s-p> "+P

" open tree
nnoremap <C-n> :NERDTree<CR>

" delete search hl
nnoremap <esc> :noh<return><esc>

" next/prev tab
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>

" move line up/down
nnoremap <A-S-j> :m .+1<CR>==
nnoremap <A-S-k> :m .-2<CR>==
inoremap <A-S-j> <Esc>:m .+1<CR>==gi
inoremap <A-S-k> <Esc>:m .-2<CR>==gi
vnoremap <A-S-j> :m '>+1<CR>gv=gv
vnoremap <A-S-k> :m '<-2<CR>gv=gv

" last tab
au TabLeave * let g:lasttab = tabpagenr()
nnoremap <silent> <C-l> :exe "tabn ".g:lasttab<CR>
vnoremap <silent> <C-l> :exe "tabn ".g:lasttab<CR>

source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/semshi.vim
source $HOME/.config/nvim/plug-config/fzf.vim

" Edit vimrc \ev
nnoremap <silent> <Leader>ev :tabnew<CR>:e ~/.config/nvim/init.vim<CR>

" Create Blank Newlines and stay in Normal mode
nnoremap <silent> zj o<Esc>
nnoremap <silent> zk O<Esc>


" Create brackets/quotes and enter into
autocmd FileType python,java,c,cpp inoremap øs []<Left>
autocmd FileType python,java,c,cpp inoremap øb {}<Left>
autocmd FileType python,java,c,cpp inoremap øp ()<Left>
autocmd FileType python,java,c,cpp inoremap ø' ''<Left>
autocmd FileType python,java,c,cpp inoremap ø" ""<Left>








