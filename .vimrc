" Configuration file for vim

set modelines=0" CVE-2007-2438


" Normally we use vim-extensions. If you want true vi-compatibility

" remove change the following statements

set nocompatible" Use Vim defaults instead of 100% vi compatibility

set backspace=2" more powerful backspacing


syntax on

" 语法高亮


autocmd InsertLeave * se nocul

autocmd InsertEnter * se cul

" 用浅色高亮当前行


set smartindent

" 智能对齐


set autoindent

" 自动对齐


set confirm

" 在处理未保存或只读文件的时候，弹出确认


set tabstop=4

" Tab键的宽度


set softtabstop=4

set shiftwidth=4

"  统一缩进为4


set noexpandtab

" 不要用空格代替制表符


set number

" 显示行号


set history=50

" 历史纪录数


set hlsearch

set incsearch

" 搜索逐字符高亮


set gdefault

" 行内替换


set encoding=utf-8

set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936,utf-16,big5,euc-jp,latin1

" 编码设置


colorscheme torte

" 设置颜色主题


"set guifont=Menlo:h16:cANSI

" 设置字体


set langmenu=zn_CN.UTF-8

set helplang=cn

" 语言设置


set cmdheight=2

" 命令行（在状态行）的高度，默认为1,这里是2


set ruler

" 在编辑过程中，在右下角显示光标位置的状态行


set laststatus=2

" 总是显示状态行


set showcmd

" 在状态行显示目前所执行的命令，未完成的指令片段亦会显示出来


set scrolloff=3

" 光标移动到buffer的顶部和底部时保持3行距离


set showmatch

" 高亮显示对应的括号


set matchtime=5

" 对应括号高亮的时间（单位是十分之一秒）

set nocompatible " be iMproved, required
filetype off " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim



call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required

Plugin 'scrooloose/nerdtree'


Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'

Plugin 'davidhalter/jedi-vim'
Plugin 'nvie/vim-flake8'
Plugin 'klen/python-mode'

Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

Plugin 'fatih/vim-go'
Plugin 'vim-airline'
Plugin 'tomlion/vim-solidity'

augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer yapf
  autocmd FileType solc AutoFormatBuffer vim-solidity
  " Alternative: autocmd FileType python AutoFormatBuffer autopep8  autocmd FileType vue AutoFormatBuffer prettier
augroup END

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
" All of your Plugins must be added before the following line
call vundle#end() " required
filetype plugin indent on " required

map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
