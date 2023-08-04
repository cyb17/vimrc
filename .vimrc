"=======================
"parametres basiques :
"=======================

set nocompatible		"desactive compatibilite vi
syntax on				"coloration syntaxique
set autoindent			"indentation automatique 
set number 				"activer le nm de ligne
set mouse=a 			"activer la souris
set shiftwidth=4		"nbr d'espace pour 1 tabulation
set tabstop=4 			"utiliser tab aulieu d'espace
set scrolloff=3			"marge de 3lignes avant ou apres curseur
set	incsearch 			"highlight le mots recheche
set ignorecase 			"recherche insensible a la case
set ruler 				"affichage filename, ligne, colonne en bas
set backspace=2
colorscheme lunaperche

"===========
"Plugins :
"===========

call plug#begin('~/.vim.plugged')

"NERDTree :

Plug 'preservim/nerdtree'
map <C-n> :NERDTreeToggle<CR>
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1

"vim-airline :

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='murmur'

"===============================YouCompleteMe :

Plug 'Valloric/YouCompleteMe'
"默认配置文件路径"
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"打开vim时不再询问是否加载ycm_extra_conf.py配置"
let g:ycm_confirm_extra_conf=0
set completeopt=longest,menu
"是否开启语义补全"
let g:ycm_seed_identifiers_with_syntax=1
"是否在注释中也开启补全"
let g:ycm_complete_in_comments=1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
"开始补全的字符数"
let g:ycm_min_num_of_chars_for_completion=2
"补全后自动关机预览窗口"
let g:ycm_autoclose_preview_window_after_completion=1
" 禁止缓存匹配项,每次都重新生成匹配项"
let g:ycm_cache_omnifunc=0
"字符串中也开启补全"
let g:ycm_complete_in_strings = 1
"离开插入模式后自动关闭预览窗口"
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"上下左右键行为"
inoremap <expr> <Down>     pumvisible() ? '\<C-n>' : '\<Down>'
inoremap <expr> <Up>       pumvisible() ? '\<C-p>' : '\<Up>'
inoremap <expr> <PageDown> pumvisible() ? '\<PageDown>\<C-p>\<C-n>' : '\<PageDown>'
inoremap <expr> <PageUp>   pumvisible() ? '\<PageUp>\<C-p>\<C-n>' : '\<PageUp>'
"==============================================

"LeaderF :

Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

call plug#end()
