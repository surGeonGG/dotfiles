
source $HOME/.config/nvim/plug-config/plugins.vim

set nocompatible
syntax enable
set tabstop=4
set autoindent
set softtabstop=4
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
set cursorline
hi CursorLine term=bold cterm=NONE ctermbg=240


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
autocmd FileType python,java,c,cpp inoremap øs []<C-g>U<Left>
autocmd FileType python,java,c,cpp inoremap øb {}<C-g>U<Left>
autocmd FileType python,java,c,cpp inoremap øp ()<C-g>U<Left>
autocmd FileType python,java,c,cpp inoremap ø' ''<C-g>U<Left>
autocmd FileType python,java,c,cpp inoremap ø" ""<C-g>U<Left>

" Function definition python
autocmd FileType python inoremap øf def ():<C-g>U<Left><C-g>U<Left><C-g>U<Left>

" In insert or command mode, move normally by using Ctrl
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" Unmap arrow keys
noremap <UP> <NOP>
noremap <DOWN> <NOP>
noremap <RIGHT> <NOP>
noremap <LEFT> <NOP>
inoremap <UP> <NOP>
inoremap <DOWN> <NOP>
inoremap <RIGHT> <NOP>
inoremap <LEFT> <NOP>


