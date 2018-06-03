call plug#begin('~/.vim/bundle')
Plug 'editorconfig/editorconfig-vim'
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
