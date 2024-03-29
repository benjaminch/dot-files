" Prerequisites:
" - neovim >= 0.5
" - rust-analyzer: https://rust-analyzer.github.io/manual.html#rust-analyzer-language-server-binary

" Steps:
" - :PlugInstall
" - Restart

"--------------------------------------------------------------------------
" General settings
"--------------------------------------------------------------------------

syntax on

" Line numbering
set number relativenumber " relative lines number
set nu rnu

set ruler               " Show the line and column numbers of the cursor.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
set modeline            " Enable modeline.
set linespace=0         " Set line-spacing to minimum.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)
" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.
if !&scrolloff
  set scrolloff=3       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
  set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif
set display+=lastline
set nostartofline       " Do not jump to first character with page commands.
set noerrorbells                " No beeps
set backspace=indent,eol,start  " Makes backspace key more powerful.
set showcmd                     " Show me what I'm typing
set showmode                    " Show current mode.
set noswapfile                  " Don't use swapfile
set nobackup            	" Don't create annoying backup files
set encoding=utf-8              " Set default encoding to UTF-8
set autowrite                   " Automatically save before :next, :make etc.
set autoread                    " Automatically reread changed files without asking me anything
set laststatus=2
set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats
set showmatch                   " Do not show matching brackets by flickering
set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not when search pattern contains upper case characters
set autoindent
set wrap
set autoindent
filetype indent plugin on
set tabstop=4 shiftwidth=4 expandtab
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).

" have a fixed column for the diagnostics to appear in
" this removes the jitter when warnings/errors flow in
set signcolumn=yes

" Set updatetime for CursorHold
" 300ms of no cursor movement to trigger CursorHold
set updatetime=300

"--------------------------------------------------------------------------
" Key maps
"--------------------------------------------------------------------------

" leader
let g:mapleader = "\<Space>"

" Reselect visual selection after indenting
vnoremap < <gv
vnoremap > >gv

" allow gf command to open buffer on non-existing file
:map <leader>gf :e <cfile><cr>


"--------------------------------------------------------------------------
" Plugins
"--------------------------------------------------------------------------

call plug#begin('~/.vim/plugged')

source ~/.config/nvim/plugins/airline.vim
" language server
source ~/.config/nvim/plugins/nvim-lspconfig.vim 
" autocompletion framework
source ~/.config/nvim/plugins/nvim-cmp.vim
" search
source ~/.config/nvim/plugins/fzf.vim
" rust
source ~/.config/nvim/plugins/rust-tools.vim
" snippet engine
source ~/.config/nvim/plugins/vim-vsnip.vim
" git wrapper
source ~/.config/nvim/plugins/vim-fugitive.vim

" Optional
source ~/.config/nvim/plugins/popup.vim
source ~/.config/nvim/plugins/telescope.vim

" Theme
source ~/.config/nvim/plugins/nord-vim.vim

call plug#end()

doautocmd User PlugLoaded

"--------------------------------------------------------------------------
" Miscellaneous
"--------------------------------------------------------------------------

