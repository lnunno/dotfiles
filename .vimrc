" Vundle configuration
" To install run: git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" To install all plugins run:
" vim +PluginInstall +qall
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Rust language plugin
Plugin 'rust-lang/rust.vim'

" Runs linters on a number of languages
Plugin 'scrooloose/syntastic'

" Lots of predefined colorschemes including wombat and monokai
Bundle 'flazz/vim-colorschemes'

" Editorconfig plugin
Plugin 'editorconfig/editorconfig-vim'

" This needs to be compiled/installed explicitly in ~/.vim/bundles/youcompleteme
"Plugin 'valloric/youcompleteme'
Plugin 'davidhalter/jedi-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme wombat256mod
set number              " Number the lines of the file
set autoindent
set shiftwidth=4
set softtabstop=4
set expandtab
syntax enable           " Enable syntax processing
set cursorline          " Highlight the current line
set showmatch           " Highlight matching [{()}]
set autoread            " Automatically read changes from files
set hlsearch            " Enable search highlighting


" Avoid annoying typos
:command WQ wq
:command QW wq
:command Wq wq
:command W w
:command Q q

" Disable auto comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Change where vim automatically backs up files to
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" Syntastic configuration.
" See: https://github.com/vim-syntastic/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" Additions from: https://github.com/greg0ire/more-instantly-better-vim/blob/master/additions_for_your_.vimrc

"====[ Highlight the first character in a line that goes over 100 characters ]======
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%101v', 100)

"====[ Map ; to : to make commands easier to type ]======
nmap ; :

"====[ Make tabs, trailing whitespace, and non-breaking spaces visible ]======
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

