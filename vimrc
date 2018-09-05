set nocompatible              " be iMproved, required
filetype off                  " required
 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Yggdroot/indentLine'
Plugin 'kien/ctrlp.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Valloric/YouCompleteMe'
Plugin 'posva/vim-vue'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set splitbelow "新窗口在下方打开
set nocompatible "关闭与vi的兼容模式
set number "显示行号
"set cursorline "设置下划线
set wrap    "自动折行
set showmatch    "显示匹配的括号
set scrolloff=3        "距离顶部和底部3行"
set encoding=utf-8  "编码
set fenc=utf-8      "编码
set mouse=a        "启用鼠标
set hlsearch        "搜索高亮
set linespace=12    "行间距
syntax on    "语法高亮

au BufNewFile,BufRead *.py
\ set tabstop=4   "tab宽度
\ set softtabstop=4 
\ set shiftwidth=4  
\ set textwidth=79  "行最大宽度
\ set expandtab       "tab替换为空格键
\ set autoindent      "自动缩进
\ set fileformat=unix   "保存文件格式

set foldmethod=indent
set foldlevel=99

map <F5> :call RunPython()<CR>
func! RunPython()
    exec "W"
    if &filetype == 'python'
        exec "!time python2.7 %"
    endif
endfunc

map <C-n> :NERDTreeToggle<CR>
" 隐藏文件
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeWinSize=25
map <C-c> "+y

"youcomplete配置
let g:ycm_min_num_of_chars_for_completion = 2  "开始补全的字符数"
let g:ycm_python_binary_path = 'python'  "jedi模块所在python解释器路径"
let g:ycm_seed_identifiers_with_syntax = 1  "开启使用语言的一些关键字查询"
let g:ycm_autoclose_preview_window_after_completion=1 "补全后自动关闭预览窗口"
"代码跳转：
nnoremap <C-]> :YcmCompleter GoToDefinitionElseDeclaration<CR>
"开关YCM
"let g:ycm_auto_trigger = 0   "turn off
let g:ycm_auto_trigger = 1   "turn on

let g:vue_disable_pre_processors = 1

":colorscheme desert
"colorscheme molokai
":colorscheme material-monokai
":colorscheme skeletor
":colorscheme morning
":colorscheme Tomorrow
:colorscheme Tomorrow-Night-Bright
":colorscheme Tomorrow-Night-Eighties
