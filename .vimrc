execute pathogen#infect()
syntax on
filetype plugin indent on
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
let g:Powerline_symbols = 'fancy'
highlight clear SignColumn

:nmap \l :setlocal number!<CR>
:nmap \o :set paste!<CR>

:set incsearch
:set ignorecase
:set smartcase
:set hlsearch
:nmap \q :nohlsearch<CR>

:nmap <C-e> :e#<CR>
:nmap <C-n> :bnext<CR>
:nmap <C-p> :bprev<CR>

:nmap ; :CtrlPBuffer<CR>

:nmap \e :NERDTreeToggle<CR>
