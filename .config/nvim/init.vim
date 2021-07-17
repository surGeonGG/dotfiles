
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
set shiftwidth=4
set expandtab
set smarttab
" set cindent
set backspace=indent,eol,start

set indentexpr=GetIndent()

function GetIndent()
   let lnum = prevnonblank(v:lnum - 1)
   let ind = indent(lnum)
   return ind
endfunction



hi CursorLine term=bold cterm=NONE ctermbg=240

" Change Color when entering Insert Mode
autocmd InsertEnter * hi CursorLine term=bold ctermbg=232
autocmd InsertLeave * hi CursorLine term=bold ctermbg=240

" Autosave
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
autocmd FileType python,java,c,cpp inoremap øs []<C-g>U<left>
autocmd FileType python,java,c,cpp inoremap øb {}<C-g>U<left>
autocmd FileType python,java,c,cpp inoremap øp ()<C-g>U<left>
autocmd FileType python,java,c,cpp inoremap ø' ''<C-g>U<left>
autocmd FileType python,java,c,cpp inoremap ø" ""<C-g>U<left>

" Function definition python
autocmd FileType python inoremap øf def (<++>):<CR><++><UP><C-o>4h

" Jump to <++> and delete
inoremap <C-SPACE> <ESC>/<++><ENTER>"_c4l

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

" Run macro recorded to q
:nnoremap <Space> @q










