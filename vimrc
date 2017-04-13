"
" My .vimrc
"
" $Id$

execute pathogen#infect()
Helptags

" Forget being compatible with good ol' vi
set nocompatible

" Make xterm inherit title from Vim
set title

" Get that filetype stuff happening
filetype on
filetype plugin on
filetype indent on

" Tabstops are 2 spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
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
colors xoria256

" Tweack color scheme
"hi Search  cterm=NONE ctermbg=Brown ctermfg=White gui=NONE
"hi LineNr  cterm=NONE ctermbg=Black ctermfg=DarkGrey
"hi Comment ctermfg=DarkGray guifg=#B46918  gui=NONE

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

" Incrementally match the search
set incsearch

" Ol' vi option to put a $ when changing text on a one line
set cpoptions+=$

" Always show line numbers
set nu

" Automatically read a file that has changed on disk
set autoread

" When the page starts to scroll, keep the cursor 8 lines from the top and 8
" lines from the bottom
set scrolloff=8

" Use F2 for toggling the taglist
nnoremap <silent> <F2> :NERDTreeToggle<CR>

" Use Shift F3 for toggling the taglist
nnoremap <silent> <F3> :TlistToggle<CR>

" Use F3 for toggling the buffexplorer
"nnoremap <silent> <M-F3> :ToggleBufExplorer<CR>

" Use F4 for Most Recently Used (files)
nnoremap <silent> <F4> :MRUToggle<CR>

" Maps to make handling windows a bit easier
noremap <silent> <F9>  :vertical resize -10<CR>
noremap <silent> <F10> :resize +10<CR>
noremap <silent> <F11> :resize -10<CR>
noremap <silent> <F12> :vertical resize +10<CR>
noremap <silent> ,cj :wincmd j<CR>:close<CR>
noremap <silent> ,ck :wincmd k<CR>:close<CR>
noremap <silent> ,ch :wincmd h<CR>:close<CR>
noremap <silent> ,cl :wincmd l<CR>:close<CR>
noremap <silent> ,cc :close<CR>
noremap <silent> ,cw :cclose<CR>
noremap <silent> ,ml <C-W>L
noremap <silent> ,mk <C-W>K
noremap <silent> ,mh <C-W>H
noremap <silent> ,mj <C-W>J

" Quickfix shortcuts
noremap  <silent> <F5>    :copen<CR>
noremap  <silent> <F6>    :cclose<CR>
noremap  <silent> <F7>    :cp<CR>
noremap  <silent> <F8>    :cn<CR>

" Specific syntax highlighting for *.vw files
au BufNewFile,BufRead *.vw set filetype=sqloracle


" cd to the directory containing the file in the buffer
nmap <silent> ,cd :lcd %:h<CR>
"
" " Turn off that stupid highlight search
nmap <silent> ,n :nohls<CR>

" Edit/Source the vimrc file
nmap <silent> ,ev :e $MYVIMRC<cr>
nmap <silent> ,sv :so $MYVIMRC<cr>

" Toggle paste mode
nnoremap ,p :set invpaste paste?<CR>:set paste?<CR>

" Toggle vertical bar
nnoremap <silent> ,I :set cursorcolumn!<CR>

"===============================================================================
" Taglist options
"===============================================================================
let Tlist_Show_One_File = 1
let Tlist_WinWidth = 40
let Tlist_Use_Right_Window = 0
let Tlist_Sort_Type = "name"
let tlist_perl_settings = 'perl;u:use;p:package;r:role;e:extends;c:constant;a:attribute;s:subroutine;l:label'

"===============================================================================
" perl-support options
"===============================================================================
let g:Perl_FormatDate = '%Y/%m/%d'
let g:Perl_NoKeyMappings = 1
let g:Perl_OutputGvim = 'buffer'

" Note, default config is overridden in $PERLCRITIC environment variable
" because it does not seem to work when set here with --profile
let g:Perl_PerlcriticSeverity = 1
let g:Perl_PerlcriticOptions = '--theme=!pirum_exception'

"===============================================================================
" vcs-command options
"===============================================================================
" Can't do this yet, wrapper script needs fix
let g:VCSCommandCVSExec = '/usr/local/pirum/bin/cvsWrapper.pl'
let g:VCSCommandMapPrefix = '<Leader>V'

"===============================================================================
" MRU options
"===============================================================================
let g:MRU_Window_Height = 15

"===============================================================================
" SuperTab options
"===============================================================================
let g:SuperTabDefaultCompletionType = 'context'

"===============================================================================
" GoldenView options
"===============================================================================
let g:goldenview__enable_default_mapping = 0
" 1. split to tiled windows
nmap <silent> ,gl   <Plug>GoldenViewSplit
"
" 2. quickly switch current window with the main pane and toggle back
nmap <silent> ,gm  <Plug>GoldenViewSwitchMain
nmap <silent> ,gM  <Plug>GoldenViewSwitchToggle
"
" 3. jump to next and previous window
nmap <silent> ,gn  <Plug>GoldenViewNext
nmap <silent> ,gp  <Plug>GoldenViewPrevious

let g:goldenview__ignore_urule =
      \ {
      \    'bufname' : [ 'tagbar' ],
      \  }

" End of .vimrc
