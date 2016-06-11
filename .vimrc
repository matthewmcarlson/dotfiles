set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
Plugin 'user/L9', {'name': 'newL9'}
" solarizing colours... oh so pretty
Plugin 'altercation/vim-colors-solarized'
" A Vim plugin which shows a git diff in the 'gutter' (sign column). It shows
" whether each line has been added, modified, and where lines have been
" removed. You can also stage and revert individual hunks.
Plugin 'airblade/vim-gitgutter'
" open stuff in your web browser, if that's your thing
Plugin 'tyru/open-browser.vim'
" Sytax highlighting
Plugin 'scrooloose/syntastic'

let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['py', 'cfg'],
                           \ 'passive_filetypes': ['java'] }

" Allows you to su/do from vim
Plugin 'chrisbra/SudoEdit.vim'
" explore your filesystem and to open files and directories
Plugin 'scrooloose/nerdtree'
" Undo tree
Plugin 'mbbill/undotree'
" PyLint, Pydoc, pyflake, pep8, etc
"Plugin 'klen/python-mode'
" runs the currently open file through Flake8,
" a static syntax and style checker for Python source code
Plugin 'nvie/vim-flake8'
" Intelligently toggling line numbers.
Plugin 'myusuf3/numbers.vim'
" Relative line numbers
Plugin 'RelOps'
" Better code folding
Plugin 'tmhedberg/SimpylFold'
" Autocomplete
" Bundle 'Valloric/YouCompleteMe' " Needs newer vim
" File browsing
Plugin 'jistr/vim-nerdtree-tabs'
" Supersearching
Plugin 'kien/ctrlp.vim'


set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

let g:syntastic_python_checkers = ['pep8']
let g:syntastic_python_pep8_args='--ignore=E501'

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

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za
" Show docstrings for folded code
let g:SimpylFold_docstring_preview=1

" YouCompleteMe config to make sure the window goes away, and makes a shortcut
" for goto defn
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

"ignore files in NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$'] 
