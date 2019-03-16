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
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'ervandew/supertab'

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

" Syntax on
syntax on

" Line numbers
set nu 

set laststatus=2

" Maps
map ; :Files<CR>
map <C-n> :NERDTreeToggle<CR>
map <C-B> :Buffers<CR>

" Shift select
nmap <S-Up> v<Up>
nmap <S-Down> v<Down>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>
vmap <S-Up> <Up>
vmap <S-Down> <Down>
vmap <S-Left> <Left>
vmap <S-Right> <Right>

" Color scheme
colorscheme evening

" Automatically change the current directory
set autochdir

" Determina o tipo de arquivo pelo nome para habilitar indentação automática, etc
filetype indent plugin on

" Ativa um 'auto-completar' melhor para a linha de comando
set wildmenu

" Faz as buscas não diferenciarem maiúsculas-minúsculas (case insensitive)
" Exceto quando você usar letras maiúsculas
set ignorecase
set smartcase

" Quando criar uma nova linha e a indentação por tipo de arquivo estiver
" desabilitada, mantem a mesma indentação da linha atual
set autoindent

" Mostra o número das linhas à esquerda
set number

" Opções de indentação, aqui você pode mudar como preferir

" Número de espaços visíveis por TAB
set tabstop=4

" Número de espaços por TAB ao editar um arquivo
set softtabstop=4

" Número de espaços usados nas funções de indentação (>> e <<)
set shiftwidth=4

" Converte TABs em espaços
set expandtab

" Habilita indentação/alinhamento inteligente
set smarttab

let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }



