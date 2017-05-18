" Obrigatório para rodar apenas no Vim (Vi Improved)
set nocompatible

" Determina o tipo de arquivo pelo nome para habilitar indentação automática, etc
filetype indent plugin on

" Habilita sintaxe colorida
syntax on

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
