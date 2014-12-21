filetype plugin indent on

set encoding=utf-8
set expandtab
set textwidth=120
set tabstop=8
set softtabstop=4
set shiftwidth=4
set backspace=indent,eol,start
set autoindent
set incsearch
set title
set ic " case insensitive
set ruler
set commentstring=\ #\ %s
set clipboard=unnamed
set hls
set nu

set pastetoggle=<F2>

" tab completion
set wildmode=longest:full,list:full
set wildmenu

function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
:set dictionary="/usr/dict/words"

colorscheme desert

syntax on

nmap <F5> oimport pdb;pdb.set_trace()<esc>
nmap <F6> oconsole.log('')<esc>

" Execute file being edited with <Shift> + e:
map <buffer> <S-e> :w<CR>:!/usr/bin/env python % <CR>
