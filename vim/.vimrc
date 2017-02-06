call pathogen#infect()

nmap :Wq :wq
nmap :wQ :wq
nmap :WQ :wq
nmap :Q  :q
nmap :W  :w
nmap :qw :wq

syntax enable
syntax on
set background=dark

set pastetoggle=<F2>

set ruler
set number
set scrolloff=5
set cmdheight=1
set ttyfast
set noerrorbells
set visualbell
set title

set autoindent 
set smartindent
set copyindent
set nowrap

set nobackup
set noswapfile

:if $VIM_CRONTAB == "true"
:set nobackup
:set nowritebackup
:endif
