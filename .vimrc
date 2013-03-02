"永远的冰点的VIM配置件
"2009-06-27

"设置菜单语言
"set langmenu=zh_cn

" =========
" 功能函数
" =========
" 获取当前目录
"func GetPWD()
"    return substitute(getcwd(), "", "", "g")
"endf


" =========
" 环境配置
" =========

" 保留历史记录
set history=400

" 命令行于状态行
"set ch=1
"set stl=\ [File]\ %F%m%r%h%y[%{&fileformat},%{&fileencoding}]\ %w\ \ [PWD]\ %r%{GetPWD()}%h\ %=\ [Line]\ %l,%c\ %=\ %P 
"set ls=2 " 始终显示状态行

" 制表符
set tabstop=4
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4

" 状态栏显示目前所执行的指令
"set showcmd 

" 行控制
set linebreak
set nocompatible
set textwidth=80
set nowrap

" 行号和标尺
set number
"set ruler
"set rulerformat=%15(%c%V\ %p%%%)

" 控制台响铃
:set noerrorbells
:set novisualbell
:set t_vb= "close visual bell

" 插入模式下使用 <BS>、<Del> <C-W> <C-U>
set backspace=indent,eol,start

" 标签页
"set tabpagemax=20
"set showtabline=2

" 缩进
set autoindent
set smartindent

syntax on
set cindent

" 自动重新读入
set autoread

" 代码折叠
"set foldmethod=syntax
"set foldmethod=indent

" 自动切换到文件当前目录
"set autochdir

"在查找时忽略大小写
 set ignorecase
 set incsearch
 set hlsearch

"显示匹配的括号
set showmatch

"实现全能补全功能，需要打开文件类型检测
filetype plugin indent on
"打开vim的文件类型自动检测功能
filetype on

"颜色
"hi Search term=standout ctermfg=4 ctermbg=248
hi Pmenu term=standout ctermfg=4 ctermbg=248

"在所有模式下都允许使用鼠标，还可以是n,v,i,c等
"set mouse=a
"
""让vim记忆上次编辑的位置
autocmd BufReadPost *
            \ if line("'\"")>0&&line("'\"")<=line("$") |
            \   exe "normal g'\"" |
            \ endif
