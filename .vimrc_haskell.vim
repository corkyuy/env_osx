
" Haskell & cabal syntax
if empty(glob("~/.vim/syntax/haskell.vim"))
  execute 'silent !mkdir -p ~/.vim/syntax'
  execute 'silent !curl -fLo ~/.vim/syntax/haskell.vim https://raw.githubusercontent.com/sdiehl/haskell-vim-proto/master/vim/syntax/haskell.vim'
endif
if empty(glob("~/.vim/syntax/cabal.vim"))
  execute 'silent !curl -fLo ~/.vim/syntax/cabal.vim https://raw.githubusercontent.com/sdiehl/haskell-vim-proto/master/vim/syntax/cabal.vim'
endif

" Setup default
syntax on
filetype plugin indent on 
setlocal nocompatible
setlocal number
setlocal nowrap
setlocal showmode
setlocal tw=80
setlocal smartcase
setlocal smarttab
setlocal smartindent
setlocal autoindent
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal expandtab
setlocal incsearch
setlocal mouse=a
setlocal history=1000
setlocal clipboard=unnamedplus,autoselect
setlocal shiftwidth  =2 |
setlocal tabstop     =2 |
setlocal softtabstop =2 |
setlocal expandtab
setlocal completeopt=menuone,menu,longest
setlocal wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
setlocal wildmode=longest,list,full
setlocal wildmenu
setlocal completeopt+=longest
setlocal t_Co=256
setlocal cmdheight=1

" Syntastic
map <Leader>s :SyntasticToggleMode<CR>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" ghc-mod
map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>

" super-tab
let g:SuperTabDefaultCompletionType = '<c-x><c-o>'
if has("gui_running")
  imap <c-space> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
else " no gui
  if has("unix")
    inoremap <Nul> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
  endif
endif
let g:haskellmode_completion_ghc = 1
setlocal omnifunc=necoghc#omnifunc

" tabularize
let g:haskell_tabular = 1
vmap a= :Tabularize /=<CR>
vmap a; :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>

call ExtractSnipFile('~/.vim/snippets/haskell.snipet', 'haskell')


