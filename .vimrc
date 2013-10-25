call pathogen#infect()
syntax enable
filetype plugin indent on
set showmode
set showcmd
set wildmenu
runtime ftplugin/man.vim
set autoindent
set expandtab
set nowrap
set hlsearch
set showmatch
set ignorecase
set smartcase
set spelllang=en_us
set number
set t_Co=256
set encoding=utf-8
set history=1000
set laststatus=2
set list listchars=tab:>-,trail:.
set shell=bash
set showmatch
set sw=2 ts=2 sts=2
set wmh=0
syntax on
filetype plugin on
filetype indent on

set guioptions-=T
colorscheme elflord

let g:ackprg="ack-grep -H --nocolor --nogroup --column"

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" turn off arrow keys in normal mode
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
