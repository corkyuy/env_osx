" ----------------------------------------------------------------------------
"   Plug
" ----------------------------------------------------------------------------

" Install vim-plug if we don't already have it
if empty(glob("~/.vim/autoload/plug.vim"))
    " Ensure all needed directories exist  (Thanks @kapadiamush)
    execute '!mkdir -p ~/.vim/plugged'
    execute '!mkdir -p ~/.vim/autoload'
    " Download the actual plugin manager
    execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')

" --- PLUGINs HERE
  Plug 'tpope/vim-vinegar'                " Vim Explorer extension
  " Plug 'tpope/vim-fugitive'               " Git
  Plug 'tpope/vim-surround'               " Surround
  Plug 'kien/ctrlp.vim'                   " Fast file loading
  Plug 'vim-airline/vim-airline'          " Status line
  " Plug 'Lokaltog/vim-easymotion'          " Easy movement <Leader>-[j/k]
  Plug 'altercation/vim-colors-solarized' " Solarized color-scheme
  " Plug 'godlygeek/tabular'                " Tabularize a-=
  " Plug 'sjl/clam.vim'                     " Run shell command
  " Plug 'tpope/vim-commentary'             " Commentary
  Plug 'christoomey/vim-tmux-navigator'   " Vim - TMUX navigator
  " Plug 'bronson/vim-trailing-whitespace'
  " Plug 'evidens/vim-twig'
  " Plug 'gmarik/Vundle.vim'               " should be called from main vimrc
  " Plug 'rking/ag.vim'                     " Ag / grep
  " Plug 'airblade/vim-gitgutter'
  " Plug 'plasticboy/vim-markdown'
  " Plug 'jlanzarotta/bufexplorer'
  " Plug 'scrooloose/nerdtree'
  " Plug 'Valloric/YouCompleteMe'
  " Plug 'jonathanfilip/vim-lucius'
  " Plug 'wesQ3/vim-windowswap'             " <leader>ww
  " Plug 'terryma/vim-multiple-cursors'
  " Plug 'rstacruz/sparkup'                 " HTML Zen coding
  " Plug 'Shougo/vimproc.vim'
  " Plug 'mattn/emmet-vim'                  " HTML Emmet
  " Plug 'jooty/vdebug'
  " Plug 'Rip-Rip/clang_complete'
  " Plug 'garbas/vim-snipmate'              "
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/vim-easy-align'

  " Haskell
  " Plug 'Shougo/vimproc.vim', {'do' : 'make'}
  " Plug 'eagletmt/ghcmod-vim'
  " Plug 'eagletmt/neco-ghc'
  " Plug 'scrooloose/syntastic'             " Error display
  " Plug 'tomtom/tlib_vim'                  "
  " Plug 'MarcWeber/vim-addon-mw-utils'     "
  " Plug 'ervandew/supertab'                "
  " Plug 'Shougo/neocomplete'               "
  " Plug 'junegunn/fzf.vim'
  " Plug 'bitc/vim-hdevtools'
  " Plug 'SirVer/ultisnips'
  " Plug 'honza/vim-snippets'
  Plug 'mhinz/vim-grepper'

  " Hard mode
  Plug 'takac/vim-hardtime'
  " VOTL
  Plug 'insanum/votl'
filetype plugin indent on                 " required!
call plug#end()



