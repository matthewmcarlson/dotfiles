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
" Allows you to su/do from vim
Plugin 'chrisbra/SudoEdit.vim'
" explore your filesystem and to open files and directories
Plugin 'scrooloose/nerdtree'
" Undo tree
Plugin 'mbbill/undotree'
" PyLint, Pydoc, pyflake, pep8, etc
Plugin 'klen/python-mode'
" runs the currently open file through Flake8,
" a static syntax and style checker for Python source code
Plugin 'nvie/vim-flake8'
" Intelligently toggling line numbers.
Plugin 'myusuf3/numbers.vim'
" Relative line numbers
Plugin 'RelOps'



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
