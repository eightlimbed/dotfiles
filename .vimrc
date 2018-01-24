" required stuff from vundle
set rtp+=~/.vim/bundle/Vundle.vim
set nocompatible
filetype off
filetype plugin indent on

call vundle#begin()           " begin plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'git://github.com/jiangmiao/auto-pairs.git'
Plugin 'morhetz/gruvbox'
call vundle#end()            " end plugins

" Tabs instead of spaces for C
autocmd Filetype c setlocal tabstop=4 noexpandtab
autocmd Filetype h setlocal tabstop=4 noexpandtab

" Gruvbox theme
colorscheme gruvbox

" leader is comma
let mapleader=","

" quick commands for write, write and exit, and q!
nnoremap <leader>q :q!<enter>
nnoremap <leader>x :x<enter>
nnoremap <leader>w :w<enter>

" completion for spelling with Ctrl-n and Ctrl-p in insert mode
set complete+=kspell

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Enable syntax highlighting
syntax on

" Enable use of the mouse for all modes
set mouse=a

set backspace=2             " deletes like most programs in insert mode
set ruler                   " show the cursor position all the time
set showcmd                 " display incomplete commands
set incsearch               " do incremental searching
set hlsearch                " highlight search results
set laststatus=2            " Always display the status line

set textwidth=80			" 80 width column
set colorcolumn=+1
highlight ColorColumn ctermbg=black guibg=green

" Numbers
set number
set numberwidth=5

" keymaps for escape and to get past closing bracket
imap kj <Esc>
imap <Space><Space> <Esc>la

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" scroll up and down faster with C-j and C-k
noremap <C-j> 5<C-E>
noremap <C-k> 5<C-Y>

" visual autocomplete for command menu
set wildmenu

" change cw to ciw
noremap cw ciw

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Use one space, not two, after punctuation.
set nojoinspaces

" Spaces not tabs
set tabstop=4 
set shiftwidth=4
set expandtab

" autosave and autoread
set autoread

augroup autoSaveAndRead
    autocmd!
    autocmd TextChanged,InsertLeave,FocusLost * silent! wall
    autocmd CursorHold * silent! checktime
augroup END

set t_Co=256
hi Normal ctermbg=none
set background=dark
:highlight Visual cterm=reverse ctermbg=NONE

" Center next Vim search match
noremap n nzz
noremap N Nzz

" Shortcut key for set paste and set nopaste
nnoremap <leader>v :set paste<Enter>i
nnoremap <leader>vv :set nopaste<Enter>

" change dw to daw
noremap dw daw

" map cl to change a full line
nnoremap cl c$

" reopen vim at last line edited
if has("autocmd")
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
		\| exe "normal! g'\"" | endif
endif
