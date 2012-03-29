" Criado via puppet
source ~/.vim/vimrc

" Set Font and size
set guifont=Monaco:h14

" For spaces instead of tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Tabs represented as a dot
set listchars=tab:\.\ ,trail:-
set list

" Disable word wrap
set nowrap

" This highlights the background in a subtle red for text that goes over the
" 80 column limit (subtle in GUI mode, anyway - in terminal mode it's less
" so).
highlight OverLength ctermbg=darkred ctermfg=white guibg=#3F3F3F
match OverLength /\%81v.\+/

"key mapping for tab navigation
nmap <Tab> gt
nmap <S-Tab> gT

" Shortcuts
:imap <C-Space> <C-X><C-O>
map th :tabfirst<CR>
map tk :tabnext<CR>
map tj :tabprev<CR>
map tl :tablast<CR>
map td :tabclose<CR>
map te :tabnew<CR>

map <leader>p :NERDTreeToggle<CR>
map <leader>c :TagbarToggle<CR>
map <C-z> :GundoToggle<CR>

" Easier Searches
set ignorecase
set smartcase

colorscheme wombat256

let g:ackprg="ack-grep -H --nocolor --nogroup --column"

nmap <leader>p :NERDTreeToggle<CR>

" GUI options
:set guioptions-=T  "remove toolbar

" Ignore *.pyc files
let NERDTreeIgnore = ['\.pyc$']

" Solarized
syntax enable
set background=dark
colorscheme solarized
