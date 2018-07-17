" Configuration powerline for vim
" Use system Python
"set rtp+=/Library/Python/2.7/site-packages/powerline/bindings/vim
" Use homebrew Python
"set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim
" Use Bundle
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing
set nu			" set number
set ai                  " auto indenting
set cindent		" auto indenting for C-based language
" set smartindent 	" auto select indent method
set showmatch		" match pair when select
set ruler               " show the cursor position
set hlsearch            " highlight the last searched term
set nohls		" turn off highlight of last searching
set history=1000        " keep 1000 lines of history
set relativenumber 	" show relative number
syntax on               " syntax highlighting

filetype off     " required for Vundle
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kristijanhusak/vim-carbon-now-sh'
Plugin 'powerline/powerline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set tabstop=4		" set tabstop with 4 spaces instead of tab
set shiftwidth=4	" set 4 spaces when shift between lines
set expandtab		" On pressing tab, insert 4 spaces

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

" Add power-line support
set t_Co=256
set laststatus=2 " Always display the statusline in all windows
let g:Powerline_symbols= 'unicode'
set guifont=Meslo\ LG\ M\ for\ Powerline:h11 
set encoding=utf8

" Global ycm setting
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" Create code images
vnoremap <F5> :CarbonNowSh<CR>
