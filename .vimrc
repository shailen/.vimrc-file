set nocompatible                  " Must come first.

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

runtime macros/matchit.vim        " Load the matchit plugin.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set nonumber                        " Show line numbers.
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

" set wrap                        " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title.

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location.

set laststatus=2                  " Show the status line all the time.

" Useful status information at bottom of screen.
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" colorscheme vividchalk            " This looks like a popular TextMate theme.
colorscheme slate

" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

" Uncomment to use Jamis Buck's file opening plugin
"map <Leader>t :FuzzyFinderTextMate<Enter>

" Automatic fold settings for specific files. Uncomment to use.
" autocmd FileType ruby setlocal foldmethod=syntax
" autocmd FileType css  setlocal foldmethod=indent

set autoindent                       " Automatically indent.

" "T" toggles the taglist for ctags.
map T :TlistToggle<CR>

" "N" toggles NERDTree for working with the filesystem.
" map N :NERDTreeToggle<CR>
nmap <silent> <c-n> :NERDTreeToggle<CR>

match todo /\%80v/                   " Highlight the 80th column.

" Use .as for ActionScript files, not Atlas files.
au BufNewFile,BufRead *.as set filetype=actionscript

" Adobe's server-side ActionScript is really just JavaScript.
au BufNewFile,BufRead *.asc set filetype=javascript sw=4 sts=4 et

" BrightScript is pretty much just Visual Basic.
au BufNewFile,BufRead *.brs set filetype=vb sw=4 sts=4 et

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrc
au!
autocmd FileType actionscript setlocal sw=4 sts=4 ts=4
autocmd FileType css          setlocal sw=4 sts=4 et
autocmd FileType eruby        setlocal sw=2 sts=2 et
autocmd FileType haskell      setlocal sw=4 sts=4 et
autocmd FileType htmlcheetah  setlocal sw=2 sts=2 et
autocmd FileType html         setlocal sw=2 sts=2 et
autocmd FileType javascript   setlocal sw=2 sts=2 et
autocmd FileType java         setlocal sw=4 sts=4 et
autocmd FileType mason        setlocal sw=2 sts=2 et
autocmd FileType ocaml        setlocal sw=2 sts=2 et
autocmd FileType perl         setlocal sw=4 sts=4 et
autocmd FileType php          setlocal sw=4 sts=4 et 
autocmd FileType python       setlocal sw=4 sts=4 et tw=72
autocmd FileType ruby         setlocal sw=2 sts=2 et
autocmd FileType scheme       setlocal sw=2 sts=2 et
autocmd FileType sql          setlocal et
autocmd FileType text         setlocal sw=2 sts=2 et tw=79
augroup END
