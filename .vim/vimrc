"Set leader key
let mapleader = ","
filetype on  " Automatically detect file types.
set nocompatible  " We don't want vi compatibility.
set nowrap
 
" Add recently accessed projects menu (project plugin)
set viminfo^=!

"Show menu with possible tab competions
set wildmenu

" Ignore extension files
set wildignore=*.dll,*.o,*.obj,*.bak,*.pyc,*.swp " ignore these"

" Minibuffer Explorer Settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" Tema
colorscheme vividchalk
 
" alt+n or alt+p to navigate between entries in QuickFix
map <silent> <m-p> :cp <cr>
map <silent> <m-n> :cn <cr>
map <leader>q :botright cwindow<cr>
 
" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'
 
syntax enable
set smartindent

set ts=2  " Tabs are 2 spaces
set bs=2  " Backspace over everything in insert mode
set shiftwidth=2  " Tabs under smart indent
set expandtab


" NERDTree
"
let NERDTreeShowBookmarks  = 1
let NERDChristmasTree = 1
let NERDTreeHijackNetrw = 1
let NERDTreeWinPos = "left"
map <leader>p :NERDTreeToggle<cr>

map <leader>][ :NERDTreeToggle<cr>
" FuzzyFinderTextMate
let g:fuzzy_ignore = "*.log,*.png,*.jpg,*.gif,*.svg,*.jpeg,*.icon,*.in,*.am,*.swp,*.git,*.svn"                                                                                      

let g:fuzzy_matching_limit = 20
map <leader>t :FuzzyFinderTextMate <cr>
"Search in Opened Buffers
map <leader>b :FuzzyFinderBuffer<CR> 

" TagList
map <leader>tl :TlistToggle <cr>
let Tlist_Use_Right_Window = 1

" Specky
let g:speckyQuoteSwitcherKey = "<C-S>'"
let g:speckyRunRdocKey = "<C-S>r"
let g:speckySpecSwitcherKey = "<C-S>x"
let g:speckyRunSpecKey = "<C-S>s"
let g:speckyRunSpecCmd = "spec -fs"
let g:speckyRunRdocCmd = "fri -L -f plain"
"let g:speckyVertSplit = 1
"

"Línea de cursor
"set cursorline

set number
set hlsearch

"Adding #{} to AutoClose Plugin and activating it for String interpolation
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'", '#{': '}'} 
let g:AutoCloseProtectedRegions = ["Character"] 

"Turning off xargs for grep.vim, freaks out on the mac
let Grep_Find_Use_Xargs = 0
let Grep_Skip_Files = '*.log *~ tags'
let Grep_Skip_Dirs = '.git'


"Load custom configuration
let my_home = expand("$HOME/")
if filereadable(my_home . '.vimrc.local')
	source ~/.vimrc.local
endif

" Quick jumping between splits
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_

" Refresh FuzzyFinder
map <F5> :ruby @finder = nil<cr>

" Autoindentación
if has("autocmd")
  filetype indent on
endif

" Cheat!
command! -complete=file -nargs=+ Cheat call Cheat(<q-args>)
function! Cheat(command)
	botright new
	setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
	execute 'silent $read !cheat '.escape(a:command,'%#')
	setlocal nomodifiable
	1
endfunction


" CODEGRAM FORK 

"Map paste from outside VIM
nmap <C-v> "+gP<CR>

"Map quick save
nmap <C-s> :w!<CR>

"Allow browser to run from vim
command -bar -nargs=1 OpenURL :!sensible-browser <args>

"Allow switching buffers without writing to disk
set hidden

" Set incremental search
set incsearch

" Set terminal title to filename
set title

" Set SMARTCASE
set smartcase

" Set ignorecase
set ignorecase

set guifont=*
set guifont=Monaco\ 10

" Interactive Mediums specific commands
autocmd User Rails Rnavcommand jobs app/jobs
autocmd User Rails Rnavcommand daemons app/daemons
autocmd User Rails Rnavcommand csupport app/controller_support

