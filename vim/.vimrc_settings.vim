" Settings {{{
set secure nocompatible
if version >= 600
  syntax enable
  if version >= 700
    filetype plugin indent on
  else
    filetype on
    filetype plugin on
    filetype indent on
  endif
else
  :finish
endif
" }}}

set encoding=utf-8              " Encoding to utf-8
set backspace=indent,eol,start  " Allow backspace in insert mode
set hidden                      " Buffers can exist in the background
set history=1000                " Store lots of :cmdline history
set hlsearch                    " Highlight searches
set incsearch
set nobackup                    " Do not create backup files set noswapfile                  " Do not create swap files
set number                      " Line numbers are nice
set showcmd                     " Show incomplete cmds down the bottom
set vb                          " Turn off beep sound
set t_vb=                       " Turn off beep sound
set noerrorbells
set visualbell
set title
let mapleader="\<Space>"
" let mapleader=","

"
" Indentation and Display
" =======================

" This sets us up to replace tabs with spaces and have 4 space width indentation
"colorscheme molokai

syntax enable

set autoindent
set copyindent
set smartindent
set smarttab
set shiftwidth=2
set shiftround
set softtabstop=2
set tabstop=2
set expandtab
set list listchars=tab:▸\ ,trail:·,eol:¬ " Display tabs and trailing spaces visually
set nowrap                               " Don't wrap lines
set anti                                 " Anti-alias
set ruler
set wildmode=longest,list,full
set wildmenu
set ignorecase
set modelines=0
set showmatch
set gdefault
set textwidth=79
set formatoptions=qrn1
set colorcolumn=80
set relativenumber
set completeopt=menuone,menu,longest
set shiftwidth  =2 |
set tabstop     =2 |
set softtabstop =2 |
set expandtab


highlight ColorColumn ctermbg=darkgray

nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
nmap <C-o> o<ESC>

" nnoremap <leader>a :Ack
" nnoremap <leader>s :!cmake .<cr>

if has("gui_running")
    if has("gui_macvim")
        set guifont=Source\ Code\ Pro:h11
        set guifont=Inconsolata-dz:h12
    elseif has("gui_win32")
        set guifont=Source\ Code\ Pro:h10:cANSI
        set guifont=Inconsolata-dz:h12:cANSI
    endif
endif


nnoremap ; :
inoremap jk <Esc>


"" Plugin Options
"" ==============
"  " JK motions: Line motions
"map <Leader>j <Plug>(easymotion-j)
"map <Leader>k <Plug>(easymotion-k)
"" nnoremap / /\v
"" vnoremap / /\v
"map <Leader> <Plug>(easymotion-prefix)
"nnoremap / /\v
"vnoremap / /\v
"map  / <Plug>(easymotion-sn)
"omap / <Plug>(easymotion-tn)

" vim-airlines
" ==============
let g:airline#extensions#tabline#enabled = 1
set laststatus=1


function! TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction

map <F2> :call TrimWhiteSpace()<CR>

" Solarized
" =============================
set background=dark
let g:solarized_visibility = "medium"
let g:solarized_contrast = "high"
let g:solarized_termcolor = 16
colorscheme solarized

" CTRLP
" =============================
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['.ctrlp']
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll|pdf|jpg|docx|xls.*|mp4|[\/]dist)$',
    \ }
map <silent> <Leader>t :CtrlP()<CR>
noremap <leader>b<space> :CtrlPBuffer<cr>



" Switch panel shortcut (TMUX)
" =============================
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"" FZF
"" ============================
"" Insert mode completion
"imap <c-x><c-k> <plug>(fzf-complete-word)
"imap <c-x><c-f> <plug>(fzf-complete-path)
"imap <c-x><c-j> <plug>(fzf-complete-file-ag)
"imap <c-x><c-l> <plug>(fzf-complete-line)
"
"" Replace the default dictionary completion with fzf-based fuzzy completion
"" inoremap <expr> <c-x><c-k> fzf#complete('cat /usr/share/dict/words')
"
"" fzf layout
"let g:fzf_layout = { 'down': '~40%' }
"" This is the default extra key bindings
"let g:fzf_action = {
"  \ 'ctrl-t': 'tab split',
"  \ 'ctrl-x': 'split',
"  \ 'ctrl-v': 'vsplit' }

" UltiSnips
" ============================
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
""let g:UltiSnipsExpandTrigger="<tab>"
""let g:UltiSnipsJumpForwardTrigger="<c-b>"
""let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Haskell specific
"#autocmd FileType haskell :so ~/.vimrc_haskell.vim
"#autocmd FileType cabal :so ~/.vimrc_haskell.vim
"
"#autocmd FileType php :so ~/.vimrc_php.vim
"
"#autocmd FileType cpp :so ~/.vimrc_cpp.vim

" yy not working
""set clipboard=unnamed
