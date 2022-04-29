if has("syntax")
  syntax on
endif

colorscheme jellybeans

set number
set autoindent
set cindent
set smartindent
set bs=2
set tabstop=4
set expandtab
set shiftwidth=4

set hlsearch
hi Search ctermbg=DarkYellow
set splitright
set splitbelow

"vim tool 쉽게 설치하려고 번들 만드는 과정에서 코드 추가.
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'preservim/nerdtree'
Plugin 'preservim/nerdcommenter'



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


"Open Directory
nmap <C-e> :NERDTreeFind<CR>
xmap <C-e> <ESC>:NERDTreeFind<CR>
nmap <C-n> :Vexplore!<CR>=
xmap <C-n> <ESC>:Vexplore!<CR>=


"Turn Off Highlight
map <F12> :noh<CR>

"Quit / Save
nmap <Esc>q :q<CR>
xmap <Esc>q <Esc>:q<CR>

nmap <Esc>w :w<CR>
xmap <Esc>w <Esc>:w<CR>

"Tab Indent
nnoremap >      >>
nnoremap <      <<
xnoremap >      >gv
xnoremap <      <gv

"Move start/end of the line
map <Home> ^
imap <Home>     <ESC>^i
map gh ^
map gl $

"Control+ move key for Window move
map <C-Left>    <ESC><C-w><Left>
map <C-Right>    <ESC><C-w><Right>
map <C-Up>    <ESC><C-w><Up>
map <C-Down>    <ESC><C-w><Down>

"Normal mode backspace/space/enter
nmap <Del> "_x
xmap <Del> "_x
nmap <backspace> h"_x
nmap <space> i <ESC>l
nmap <CR> o<ESC>


" Control + Shift + 방향키 설정
map <C-S-Left>  <ESC><C-Left>10<C-W><<C-W><C-P>
map <C-S-Right>  <ESC>10<C-W>>
map <C-S-Up>  <ESC><C-Up>10<C-W>-<C-W><C-P>
map <C-S-Down>  <ESC>10<C-W>+


" Comment
let g:NERDDefaultalign = 'left'
map <esc>c  <leader>c<space>
