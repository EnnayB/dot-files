runtime ftplugin/man.vim
set keywordprg=:Man

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'tomasiser/vim-code-dark'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ervandew/supertab'

call plug#end()


set encoding=utf8 fileencodings=
syntax on
colorscheme codedark
set guifont='FiraCode'
let g:airline_theme='onehalfdark'
let g:SuperTabDefaultCompletionType = "<c_n>"

set number
set cc=80
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set smarttab
set autoindent
set nocompatible
set cindent
set cinoptions+=:0g0i0(0

highlight Pmenu ctermbg=DarkGrey guibg=DarkGrey
highlight PmenuSel ctermbg=Blue guibg=Blue
set pumheight=10

filetype plugin on
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone

autocmd Filetype make setlocal noexpandtab

packadd termdebug
autocmd Filetype c,h,cpp setlocal comments+=sr:/*,mb:**,ex:*/
autocmd Filetype c,h set autoindent
autocmd Filetype c,h set cindent
let g:SuperTabDefaultCompletionType = "context"
set list listchars=tab:»·,trail:·
set cino+=:0

hi lineNr ctermfg=254
let mapleader = " "
nnoremap <Space> <Nop>
:nnoremap <Leader>h :sp <Cr>
:nnoremap <Leader>v :vs <Cr>
:nnoremap <Leader>p :sp ~/.vimrc <Cr>
:nnoremap <Leader>r :source ~/.vimrc <Cr>
:nnoremap <Leader>d :Termdebug <Cr>
:nnoremap <Leader>m :make 
:nnoremap <Leader>f :NERDTree <Cr>
:nnoremap <Leader>g :Git <Cr>
:nnoremap <Leader>/ :noh <Cr>
