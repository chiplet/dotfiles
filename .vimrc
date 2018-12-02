filetype on
filetype plugin on
filetype indent on

syntax enable  " set syntax color coding
set number  " show line numbers

set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

" don't expand tabs to spaces in makefiles
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

" enable folds
set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent

" save folds between sessions
augroup AutoSaveFolds



" visual movement (don't jump over multiline lines)
nnoremap j gj
nnoremap k gk

" map common mispellings of exit to correct one
nnoremap :Q :q
nnoremap :WQ :wq
nnoremap :Wq :wq
