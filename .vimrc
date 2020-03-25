" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim'
Plug 'fatih/vim-go'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'

"Markdown{{{
Plug 'godlygeek/tabular'
Plug 'SirVer/ultisnips',{'for':'markdown'}
Plug 'mzlogin/vim-markdown-toc'
Plug 'plasticboy/vim-markdown'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}

"}}}


Plug 'powerline/powerline'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'



" theme plug
Plug 'morhetz/gruvbox'
Plug 'w0ng/vim-hybrid'
" Initialize plugin system
call plug#end()


" **************** OPTIONS *****************
" no compatible vi
 set nocompatible
" 设置行号
set number
" 打开语法高亮
syntax on
set hlsearch

colorscheme hybrid
"
set foldmethod=indent


" some mapping
let mapleader=','
let g:mapleader=','

" *************MAP NMAP IMAP *****************

" type jj to insert mode
inoremap jj <Esc>`^

" use leader+w write document
inoremap <leader>w <Esc>:w<cr>
noremap <leader>w :w<cr>

" use <ctrl-h/j/k/l> change window
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

noremap <space> viw
noremap - x                          
noremap <C-d> dd
imap <C-d> <Esc>ddi 
vnoremap <leader>y :w !pbcopy<CR><CR>
nmap <leader>p :r !pbpaste<CR><CR>



" Plug NERDTree Setting
nnoremap <leader>v :NERDTreeFind<cr>
nnoremap <leader>g :NERDTreeToggle<cr>
let NERDTreeShowHidden=1
" let NERDTreeIgnore= xxxxx ignore some file type TODO

"Plug ctrlp Setting
let g:ctrlp_map = '<leader>p'
let g:ctrlp_map = 'CtrlP'
map <leader>f :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window_bottom = 1
let g:ctrlp_max_height = 15
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_mruf_max = 500
let g:ctrlp_follow_symlinks = 1
 

"Plug easy-motion Setting
nmap ss <Plug>(easymotion-s2)

"Plug python-mode Setting
let g:pymode_python = 'python3'
let g:pymode_trim_whitespaces = 1
let g:pymode_doc=1
let g:pymode_doc_bind = 'K'
let g:pymode_rope_goto_definition_bind = "<C-[>"
let g:pymode_lint = 1
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe', 'pylint']
let g:pymode_options_max_line_length = 120

"Plug vim-gitgutter Setting
set updatetime=100 " 100ms update once

"Plug vim-markdown
 let g:vim_markdown_folding_disabled = 1 " 打开所有折叠目录
 let g:vim_markdown_toc_autofit = 1      " 自动调整toc 目录

"Plug markdown-preview Setting
let g:mkdp_path_to_chrome = "open -a Google\\ Chrome"    " preview markdown in chrome
let g:mkdp_auto_start = 0                                " auto start preview 
let g:mkdp_auto_close = 1                                " 切换buffer时自动关闭preview


"Plug tagbar Setting
nmap <F5> :TagbarToggle<CR>
let g:tagbar_autoclose = 0 

"Plug vim-instant-markdown Setting     







