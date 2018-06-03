call plug#begin('~/.vim/bundle')
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree'
call plug#end()


" default space and tab config
set expandtab " convert tabs to spaces
set tabstop=4 " number of spaces used for each tab
set shiftwidth=4 " indentation spaces
set backspace=indent,eol,start " make backspace work like most other apps

" Line numbering and scroll config
set mouse=a

" makes webpack livereload work
set backupcopy=yes

" Nerdtree config
" startup nerdtree whenever vim opens on a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

let NERDTreeShowHidden=1
