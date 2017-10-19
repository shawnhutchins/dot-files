set nocompatible
filetype off

" Powerline
let g:powerline_symbols = 'fancy'
set rtp+=~/.git_repos/powerline/powerline/bindings/vim


" Setting up Vundle - the vim plugin bundler
let vundleInstalled=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
  let vundleInstalled=0
endif
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" Plugins
Plugin 'tomasr/molokai'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/syntastic'
Plugin 'digitaltoad/vim-pug'

filetype plugin indent on

if vundleInstalled == 0
  echo "Installing bundles, ignore key map error"
  echo ""
  :BundleInstall
endif

au BufNewFile,BufRead *.ejs set filetype=html

syntax on
set laststatus=2
set encoding=utf-8
set mouse=
set number
set hidden

set autoread
set wildmenu
set wildmode=list:longest
set splitright
set splitbelow

" Indent
set cindent
set smartindent
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2

" Search 
set ic
set hlsearch 
set incsearch

"set noswapfile
"set nobackup
"set backupdir=
"set directory=

set so=5

" Folding for indent groupes. Mess with this later
"set foldmethod=indent
"set foldminlines=1
"set foldlevel=100

" Indent Guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" syntastic settings 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['jshint']

colorscheme molokai
set guifont=Monaco:h15

" needed so that vim still understands excape sequences 
nnoremap <esc>^[ <esc>^[
