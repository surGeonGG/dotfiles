
"Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

call plug#begin('~/.vim/plugged')

Plug 'PyCQA/pylint'
Plug 'neoclide/coc.nvim'
Plug 'numirias/semshi'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'puremourning/vimspector'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'cjrh/vim-conda'
Plug 'lervag/vimtex'
Plug 'dylanaraps/wal.vim'

call plug#end()

autocmd VimEnter *
  \  if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
