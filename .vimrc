" Vim Configuration
set nocompatible
set nowrap
filetype off

syntax enable
set relativenumber
set number
set linebreak
set showmatch
set visualbell
set mouse=n

set hlsearch
set smartcase
set ignorecase
set incsearch

set ttyfast
set lazyredraw

set autoindent
set shiftwidth=2
set smartindent
set smarttab
set tabstop=2
set softtabstop=2
set background=dark
set expandtab
set undolevels=1000
set backspace=indent,eol,start
hi Pmenu ctermbg=black ctermfg=white
set colorcolumn=100
hi ColorColumn guibg=#a9a9a9 ctermbg=236

" Plugin List
call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'dyng/ctrlsf.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
"Plug 'tomasiser/vim-code-dark'

" IDE Support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'

call plug#end()

"colorscheme codedark

"vim-closetag configuration
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.tsx,*.jsx'
let g:closetag_xhtml_filenames = '*.xhtml,*.tsx,*.xml,*.jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

" Add > at current position without closing the current tag, default is ''
let g:closetag_close_shortcut = '<leader>>'
let g:airline#extensions#tabline#enabled = 1
" Plugin Configuration
nnoremap <silent> <C-p> :FZF<CR>
nnoremap <silent> <C-a> :Buffers<CR>
nnoremap tn :tabnew<CR>
nnoremap th :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
nnoremap tp :noh<CR>
nnoremap <C-o> :CtrlSF<space>
nnoremap d "_d
vnoremap d "_d
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
