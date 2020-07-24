"Leaders
let mapleader="'"
let maplocalleader="''"

"Buffers
nmap <SPACE>bf :bn<CR>
nmap <SPACE>bb :bp<CR>
nmap <SPACE>bd :bd<CR>
nmap <SPACE>bD :bd!<CR>

"Windows
nmap <C-w>1 :vs<CR>
nmap <C-w>2 :sp<CR>
nmap <C-w>0 :q<CR>
nmap <C-w>) :q!<CR>
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
tmap <C-h> <C-\><C-n><C-w>h
tmap <C-j> <C-\><C-n><C-w>j
tmap <C-k> <C-\><C-n><C-w>k
tmap <C-l> <C-\><C-n><C-w>l
imap <C-h> <ESC><C-w>h
imap <C-j> <ESC><C-w>j
imap <C-k> <ESC><C-w>k
imap <C-l> <ESC><C-w>l
nmap <M-j> :resize +1<CR>
nmap <M-k> :resize -1<CR>
nmap <M-h> :vertical resize -1<CR>
nmap <M-l> :vertical resize +1<CR>
imap <M-j> <ESC>:resize +1<CR>i
imap <M-k> <ESC>:resize -1<CR>i
imap <M-h> <ESC>:vertical resize -1<CR>i
imap <M-l> <ESC>:vertical resize +1<CR>i
tmap <M-j> <C-\><C-N>:resize +1<CR>i
tmap <M-k> <C-\><C-N>:resize -1<CR>i
tmap <M-h> <C-\><C-N>:vertical resize -1<CR>i
tmap <M-l> <C-\><C-N>:vertical resize +1<CR>i

"Configs
nmap <LEADER>Cr :source ~/.config/nvim/init.vim<CR>
nmap <LEADER>pi :PlugInstall<CR>
nmap <LEADER>pc :PlugClean<CR>

"Quit
nmap <LEADER>q :q<CR>
nmap <LEADER>Q :q!<CR>
nmap <LEADER>qa :qa<CR>
nmap <LEADER>qA :qa!<CR>

"Editor
nmap <LEADER>d "_d
xmap <LEADER>d "_d
xmap <LEADER>p "_dP
imap <C-f> <RIGHT>
imap <C-b> <LEFT>
imap <C-n> <DOWN>
imap <C-p> <UP>
imap <C-a> <HOME>
imap <C-e> <END>
imap <C-d> <Del>

"Terminal
nmap <M-t> :term<CR>
tmap <M-t><ESC> <C-\><C-n>

