if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set number
set showcmd

call plug#begin()
"vim util
Plug 'powerline/powerline'
Plug 'aserebryakov/vim-todo-lists'
Plug 'kien/ctrlp.vim'
Plug 'mboughaba/i3config.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'

"Themes
Plug 'crusoexia/vim-monokai', {'as':'monokai'}
Plug 'sjl/badwolf', {'as':'wolf'}
Plug 'sainnhe/vim-color-lost-shrine', {'as':'shrine'}
Plug 'joshdick/onedark.vim'

"Typescript
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
Plug 'Shougo/vimproc.vim', {'do':'make'}
Plug 'valloric/youcompleteme', { 'do': 'python3 install.py --ts-completer' }
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'Galooshi/vim-import-js'

"Testing
Plug 'janko/vim-test'

"Vue Plugins
Plug 'posva/vim-vue'
"Plug 'Quramy/tsuquyomi-vue'

"css
Plug 'ap/vim-css-color'
Plug 'joukevandermaas/vim-ember-hbs'

call plug#end()
"let g:deoplete#enable_at_startup = 1

syntax on 
color onedark 
set background=dark
set t_Co=256

hi Normal ctermbg=NONE guibg=NONE

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType vue set omnifunc=htmlcomplete#CompleteTags

"Files we never want to search with ctrlP
set wildignore+=*/node_modules/*,*/build/*,*/.build/*,*/dist/*,*/.dist/*

"relative line number
set relativenumber
set rnu

"key maps
imap ii <Esc>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuit<CR>

"fzf/file search
nmap <silent> f<C-f> :Ag<CR> 

"TSU
nmap <silent> t<C-i> :TsuImport<CR>
nmap <silent> t<C-r> :TsuRenameSymbol<CR>

"NERD TREE
map <C-n> :NERDTreeToggle<CR>
" enable line numbers
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber
