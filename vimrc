"
" My .vimrc
"
" $Id$

" Forget being compatible with good ol' vi
set nocompatible

" Vundle 
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'taglist.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Get that filetype stuff happening
filetype on
filetype plugin on
filetype indent on

" Tabstops are 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" Look & Feel
"
"set guifont=-ibm-(nil)-medium-r-medium-*-*-140-*-*-c-*-ibm-special
" Get 256 Colours
set t_Co=256
set guifont=-misc-fixed-medium-r-semicondensed-*-*-100-*-*-c-*-iso8859-8

" Turn on syntax highlighting
syn on

" Set colour scheme
colors colorer

" Tweack color scheme
hi Search  cterm=NONE ctermbg=Brown ctermfg=White gui=NONE
hi LineNr  cterm=NONE ctermbg=Black ctermfg=DarkGrey
hi Comment ctermfg=DarkGray guifg=#B46918  gui=NONE

" Setup a funky status line
"
"set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
"set stl=%f\ %m\ %r\ Line:\ %l/%L[%p%%]\ Col:\ %c\ Buf:\ #%n\ [%b][0x%B]
set stl=%f\ %m\ %r\ Line:\ %l/%L\ [%p%%]\ Col:\ %c\ Buf:\ #%n\ [%b][0x%B]
set laststatus=2

" Allow cursor to go anywhere
set virtualedit=all

" Don't wrap when searching
"
set nowrapscan

" Allow hidden buffers
set hidden

" Don't update the display while executing macros
set lazyredraw

" At least let yourself know what mode you're in
set showmode

" Enable enhanced command-line completion. Presumes you have compiled
" with +wildmenu.  See :help 'wildmenu'
set wildmenu

" Set chars for list (set list / set nolist)
set listchars=tab:->,trail:.,eol:$ 

" Keep some stuff in the history
set history=100

" Enable search highlighting (I may really get to hate this!)
set hlsearch

" Ol' vi option to put a $ when changing text on a one line
set cpoptions+=$

" Always show line numbers
set nu

" Use F8 for toggling the taglist
nnoremap <silent> <F8> :TlistToggle<CR>

" Specific syntax highlighting for *.vw files
au BufNewFile,BufRead *.vw set filetype=sqloracle

" perl-support tweaks
let g:Perl_FormatDate = '%Y/%m/%d'
let g:Perl_NoKeyMappings = 1

" cd to the directory containing the file in the buffer
nmap <silent> ,cd :lcd %:h<CR>
"
" " Turn off that stupid highlight search
nmap <silent> ,n :nohls<CR>

" Let's make it easy to edit this file (mnemonic for the key sequence is
" 'e'dit 'v'imrc)
nmap <silent> ,ev :e $MYVIMRC<cr>
"
" And to source this file as well (mnemonic for the key sequence is
" 's'ource 'v'imrc)
nmap <silent> ,sv :so $MYVIMRC<cr>

" End of .vimrc
