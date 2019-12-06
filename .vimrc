"                        _                    
"  _ __ ___  _   ___   _(_)_ __ ___  _ __ ___ 
" | '_ ` _ \| | | \ \ / / | '_ ` _ \| '__/ __|
" | | | | | | |_| |\ V /| | | | | | | | | (__ 
" |_| |_| |_|\__, | \_/ |_|_| |_| |_|_|  \___|
"            |___/                            
"            
" 设置行号
set number
set relativenumber
" 语法高亮
syntax on
" 主题设置
colorscheme default
" 高亮搜索
set hlsearch
" 自动缩进
set autoindent
" paste模式
set pastetoggle=<F1>

"创建leader键
let mapleader=','
" jj进入normal模式
inoremap jj <Esc>
" 窗口选定,使用ctrl+h/j/k/l switch window
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

"强制写入
cmap w!! w !sudo tee > /dev/null %



"插件设置

call plug#begin('~/.vim/plugged')


" vim菜单
Plug 'mhinz/vim-startify'
" 美化vim界面
Plug 'vim-airline/vim-airline'
" 代码缩进提示
Plug 'Yggdroot/indentLine'
" 目录树
Plug 'scrooloose/nerdtree'

" 目录树省略文件
" let NERDTREEShowHidden=1
" let NERDTREEIgnore=[
"	      \	'\.git$', \ ]

" vim-theme
Plug 'vim-airline/vim-airline-themes'
" 快速查找
Plug 'easymotion/vim-easymotion'
" 快速成对修改
Plug 'tpope/vim-surround'
" install fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"far插件,快速修改插件
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim'
"install tagbar
Plug 'majutsushi/tagbar'
"install 高亮
Plug 'lfv89/vim-interestingwords'
"install 补全插件
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"neoformat 代码格式化插件
Plug 'sbdchd/neoformat'
""安装静态检查
"Plug 'dense-analysis/ale'
"快速注释插件
Plug 'tpope/vim-commentary'




" 设置nerdtree快捷键 
nnoremap <leader>v :NERDTreeFind<cr>
nnoremap <leader>g :NERDTreeToggle<cr>

" FZF 快捷键
" 快速搜索本地文件
nnoremap <leader>s :FZF<cr>



"快速打开tagbar
nnoremap <leader>r :TagbarToggle<cr>
" 设置快捷搜索键
nmap s <Plug>(easymotion-s2)
call plug#end()

