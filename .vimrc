syntax on
set number

set history=500

let $LANG='en'
set langmenu=en

set ruler

set ignorecase
set smartcase
set hlsearch
set magic

set clipboard=unnamedplus

set showmatch
set mat=2

syntax enable
set background=dark
set encoding=utf8

set smarttab
set shiftwidth=4
set tabstop=4

set wrap

set number relativenumber
set nu rnu

set nocompatible
let &rtp  = '~/.vim/bundle/vimtex,' . &rtp
let &rtp .= '~/.vim/bundle/vimtex/after'
filetype plugin indent on
syntax enable

let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_view_method = 'mupdf'
let g:tex_flavor = 'latex'
let g:continuous = 1

filetype plugin on
"Uncomment to override defaults:
"let g:instant_markdown_slow = 1
"let g:instant_markdown_autostart = 0
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_mermaid = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0
"let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1
