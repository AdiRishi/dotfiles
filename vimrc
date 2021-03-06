call plug#begin('~/.vim/bundle')
" Misc utilities
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'christoomey/vim-system-copy'
Plug 'jszakmeister/vim-togglecursor'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'valloric/youcompleteme'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
" Syntax highlighting
Plug 'hashivim/vim-terraform'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'
Plug 'hashivim/vim-terraform'
Plug 'puppetlabs/puppet-syntax-vim'
Plug 'pprovost/vim-ps1'
" Color scheme plugins
Plug 'joshdick/onedark.vim'
call plug#end()


" Color scheme config
colorscheme onedark


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


" vim-javascript config
let g:javascript_plugin_jsdoc = 1


" vim-jsx config
let g:jsx_ext_required = 0
let g:jsx_pragma_required = 0

"ctrlp config
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn|pyc))$'


" vim-system-copy config
let g:system_copy#copy_command='xclip -sel clip'

" vim-terraform config
let g:terraform_align=1

" Youcompleteme options
let g:ycm_autoclose_preview_window_after_insertion = 1

" Nerdcommenter options
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'

" Git gutter config
let g:gitgutter_map_keys = 0
