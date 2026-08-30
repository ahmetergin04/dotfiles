"set clipboard=unnamed,unnamedplus " Use system clipboard for copy/paste
set wildmenu            " Visual menu for command-line completion"
set number                    " Show line numbers
set cursorline               " Highlight the current line
set ruler                    " Show cursor position in status line
set showcmd                  " Show partial commands in status line
set showmatch                " Highlight matching brackets/parentheses

" Colors and syntax
syntax enable                " Enable syntax highlighting
filetype on
filetype plugin indent on
"set background=dark          " Use dark background for better contrast
colorscheme  pablo" Bright, vibrant color scheme
" Alternative bright schemes to try:
" colorscheme ron
" colorscheme pablo
" colorscheme torte
" colorscheme desert
" colorscheme habamax 
" Status line configuration
set laststatus=2            " Always show status line
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ %=\[POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

" Visual guides
set colorcolumn=80          " Show column at 80 characters
set list                    " Show invisible characters
set listchars=tab:→\ ,trail:·,extends:>,precedes:<,nbsp:+

" Indentation and tabs
"set autoindent              " Automatically indent new lines
"set smartindent             " Smart auto-indenting
set expandtab               " Use spaces instead of tabs
set tabstop=4               " Tab width is 4 spaces
set shiftwidth=4            " Indent width is 4 spaces
set softtabstop=4           " Backspace deletes 4 spaces

" Search behavior
set ignorecase              " Case-insensitive search
set smartcase               " Case-sensitive if uppercase letters used
set incsearch               " Incremental search (highlight as you type)
set hlsearch                " Highlight all search matches
nnoremap <Esc> : nohlseach<CR> 


" File handling
set autoread                " Automatically reload files changed outside vim

" Editor behavior
set backspace=indent,eol,start  " Allow backspace over everything
set scrolloff=5             " Keep 5 lines visible above/below cursor
set wrap                    " Wrap long lines
set linebreak               " Break lines at word boundaries

" Remember cursor position
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Toggle line numbers
nnoremap <F2> :set number!<CR>
" Toggle relative line numbers
nnoremap <F3> :set relativenumber!<CR>
" Abbreviations for common typos and phrases
iabbrev recieve receive
iabbrev seperate separate

set lazyredraw              " Don't redraw during macros
set ttyfast                 " Fast terminal connection

