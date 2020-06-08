filetype on
filetype plugin on
filetype indent on

syntax enable
set number " show line numbers

set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

set foldenable " enable folding
set foldlevelstart=10 " open most folds by default
set foldnestmax=10 " 10 nested fold max
nnoremap <space>f za
set foldmethod=indent " fold based on indent level
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

" move vertically by visual line (no jumping over multiline-lines
nnoremap j gj
nnoremap k gk
nnoremap :Q :q
nnoremap :WQ :wq

" write changes to file
nnoremap <space>w :w<enter>

" make binds
nnoremap mm :w<enter>:make -j<enter>
nnoremap ma :w<enter>:make all<enter>
nnoremap mc :w<enter>:make clean<enter>
nnoremap mr :w<enter>:make run<enter>

" open active window in a new tab
nnoremap <space>z :tabnew %<enter>

" quick navigation between windows
nnoremap <space>h <C-w>h
nnoremap <space>j <C-w>j
nnoremap <space>k <C-w>k
nnoremap <space>l <C-w>l

" edit vimrc and source it
nnoremap ,,c :e ~/.vimrc<enter>
nnoremap ,,s :source ~/.vimrc<enter>

" save folds between sessions
augroup AutoSaveFolds
    autocmd!
    autocmd BufWinLeave * mkview
    autocmd BufWinEnter * silent loadview
augroup END

" emacs style shortcuts for jumping to line beginning and end
nnoremap <C-e> <C-o>$
nnoremap <C-a> <C-o>I
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>I

" todo config only for .rs files
nmap <C-r> :w<CR>:!cargo run<CR>
nnoremap <space>r :w<enter>:!cargo run<enter>
