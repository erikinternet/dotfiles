syntax on

set noswapfile
set nobackup
set undodir=~/.config/vim/undodir
set undofile
set incsearch
set smartindent

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
" custom keybinds

"map CTRL-E to end-of-line (insert mode) map CTRL-A to beginning-of-line (insert mode) 
nmap <C-e> <esc>$i<right>
nmap <C-a> <esc>0i
