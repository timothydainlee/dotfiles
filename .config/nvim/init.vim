" Plugin
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree' " NERDTree
Plug 'jiangmiao/auto-pairs' " auto-pairing
Plug 'preservim/nerdcommenter' " easier comment
Plug 'vim-airline/vim-airline' " status bar
Plug 'vim-airline/vim-airline-themes' " status bar theme
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Plugin settings
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv
nmap <F1> :NERDTreeToggle<CR>
let g:NERDTreeMinimalUI=1
set noshowmode
set cmdheight=1
let g:airline_theme="molokai"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" General
set history=1000 " 1000 lines of history VIM has to rmember
filetype plugin on " enable plugin by filetype
filetype indent on " enable indent by filetype

" UI
set nu " display line number
set so=5 " 7 space margin, vertically
set wildmenu " command line completion
set ruler " show current position in bottom right
set backspace=eol,start,indent " backspace works as it is expected to be
set ignorecase " ignore case during search
set smartcase " search uppercase when provided
set hlsearch " highlight searches
set incsearch " highlight as charaters added

" Colors and Fonts
syntax enable " syntax
set encoding=utf8 " utf8 as standard encoding

" Files and Backups
set nobackup " never used VIM backup
set nowritebackup " never used VIM backup
set noswapfile " swap files are annoying

" Text, Tab and Indent
set expandtab " use spaces for tabs
set smarttab " tabs accoring to shiftwidth
set shiftwidth=4 " 4 spaces for a tab
set tabstop=4 " 4 spaces for a tab
set autoindent " autoindent
set smartindent " smartindent
set nowrap " do not change line if it is long

" Miscellaneous
if has("autocmd") " remeber last position
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
set mouse=a " mouse and scroll
highlight VertSplit ctermbg=NONE guibg=NONE
set fillchars+=vert:│
set path+=** " recursive search

set t_Co=256
colorscheme ron

