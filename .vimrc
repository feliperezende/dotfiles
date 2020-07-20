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
Plugin 'vimwiki/vimwiki'
Plugin 'wadackel/vim-dogrun'
Plugin 'atahabaki/archman-vim'
Plugin 'jdsimcoe/hyper.vim'
Plugin 'tweekmonster/django-plus.vim'
Plugin 'ajh17/Spacegray.vim'
Plugin 'mhinz/vim-startify'

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

" To display the status line always
set laststatus=2

" To highlight all search matches
set hlsearch

" Maps
map ; :Files<CR>
map <C-n> :NERDTreeToggle<CR>
map <C-B> :Buffers<CR>

" Clear last search highlighting
map <Space> :noh<CR>

" Shift select
nmap <S-Up> v<Up>
nmap <S-Down> v<Down>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>

vmap <S-Up> <Up>
vmap <S-Down> <Down>
vmap <S-Left> <Left>
vmap <S-Right> <Right>

" In normal mode or in insert mode, press Alt-j to move the current line down, or press Alt-k to move the current line up.
" After visually selecting a block of lines (for example, by pressing V then moving the cursor down), press Alt-j to move the whole block down, or press Alt-k to move the block up. 
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" To Mac users out there: for mapping ALT+hjkl, use instead the real character generated
" ABNT2 keyboard
nnoremap ʝ :m .+1<CR>==
nnoremap ĸ :m .-2<CR>==
inoremap ʝ <Esc>:m .+1<CR>==gi
inoremap ĸ <Esc>:m .-2<CR>==gi
vnoremap ʝ :m '>+1<CR>gv=gv
vnoremap ĸ :m '<-2<CR>gv=gv

" To Mac users out there: for mapping ALT+hjkl, use instead the real character generated
" US International keyboard
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

" fix file identation 
map <F6> gg=G<C-o><C-o>

" Color scheme
colorscheme spacegray

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

" highlight linha atual
set cursorline

"ignore files in NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$']

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

if has('gui_running')
    set guifont=Monaco:h14
endif

