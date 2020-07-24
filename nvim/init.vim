"init.vim

"Basic settings
set nocompatible
syntax on
set number 
set showmode 
set number 
set relativenumber 
set nowrap 
set tabstop=4 
set softtabstop=4 
set expandtab 
set shiftwidth=4 
set shiftround 
set backspace=indent,eol,start
set autoindent 
set copyindent 
set showmatch 
set ignorecase 
set smartcase 
set smarttab 
set scrolloff=4 
set hlsearch 
set incsearch 
set mouse=a 
set fileformats="unix,dos,mac"
set formatoptions+=1
set clipboard=unnamed
set autoread
set updatetime=1000
set guifont=SF-Mono-Bold:h11
set encoding=utf-8

"Use 24-bit (true-color) mode.
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
if (has("termguicolors"))
  set termguicolors
endif

call plug#begin()

"Color schemes
Plug 'joshdick/onedark.vim'
Plug 'liuchengxu/space-vim-dark'
Plug 'arzg/vim-colors-xcode'

"Autocomplete
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/deoplete.nvim'
Plug 'dense-analysis/ale'

"Brackets
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'

"Finding & replacing
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Comments
Plug 'preservim/nerdcommenter'

"Git
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'

"Navigator
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ryanoasis/vim-devicons', { 'on': 'NERDTreeToggle' }

"Languages
Plug 'keith/swift.vim'
Plug 'ap/vim-css-color'

call plug#end()

color onedark

"Load config files
runtime scripts/keymaps.vim
runtime plugConfs/NERDTree.vim
runtime plugConfs/vim-multiple-cursors.vim
runtime plugConfs/fzf.vim
runtime plugConfs/ultisnips.vim
runtime plugConfs/deoplete.vim

