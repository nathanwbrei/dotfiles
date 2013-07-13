set expandtab
set shiftwidth=4
set softtabstop=4
set mouse=a

filetype off
call pathogen#incubate()
execute pathogen#infect()

syntax on
filetype plugin indent on

"For VimClojure:
"http://naleid.com/blog/2011/12/19/getting-a-clojure-repl-in-vim-with-vimclojure-nailgun-and-leiningen/

let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow = 1

"In normal mode, space centers screen around cursor position
nmap <space> zz
"Same behavior during find
nmap n nzz
nmap N Nzz

"Navigate through wrapped lines
nnoremap k gk
nnoremap j gj
nnoremap 0 g0
nnoremap $ g$
nnoremap ^ g^


"This is almost like WriteRoom's Typewriter mode?
:set scrolloff=1000

"Crosshairs on 'c'
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

"We want to be able to switch modes via Ctrl-Space, also via jk   
:imap jk <Esc>l
:nmap <C-Space> i
:imap <C-space> <Esc>l
:imap <Tab> <Esc>l

"Execute python via F5
nmap <buffer> <F5> :w<Esc>mwG:r!python %<CR>`.


" Wrap at 72 chars for comments.
set formatoptions=cq textwidth=72 foldignore= wildignore+=*.py[co]

" Backspace now makes sense
set backspace=indent,eol,start

colorscheme distinguished
