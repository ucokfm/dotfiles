set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"--- HTML ---
Plugin 'othree/html5.vim'
Plugin 'mattn/emmet-vim'

"--- Javascript ---
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'scrooloose/syntastic'
Plugin 'mtscout6/syntastic-local-eslint.vim'
Plugin 'flowtype/vim-flow'

"--- Python ---
Plugin 'hynek/vim-python-pep8-indent'

"--- Utilities ---
Plugin 'crusoexia/vim-monokai'
Plugin 'scrooloose/nerdtree'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'vim-airline/vim-airline'

"--- Markup/Config Files ---
Plugin 'godlygeek/tabular' " needed by vim-markdown
Plugin 'plasticboy/vim-markdown'
Plugin 'elzr/vim-json'
Plugin 'chase/vim-ansible-yaml'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"--- my config ---

"--- nerdtree ---
map <C-n> :NERDTreeToggle<CR>

"--- vim-jsx ---
let g:jsx_ext_required = 0

"--- syntastic ---
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']

"--- markdown ---
let g:vim_markdown_folding_disabled = 1

"--- json ---
let g:vim_json_syntax_conceal = 0 

"--- misc ---
set number
set laststatus=2
set t_Co=256

if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

set background=dark
colorscheme monokai

autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

if has('mouse')
  set mouse=a
endif
