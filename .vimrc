syn on                      "语法支持

set mouse=a

"common conf {{             通用配置
set ai                      "自动缩进
set bs=2                    "在insert模式下用退格键删除
set showmatch               "代码匹配
set laststatus=2            "总是显示状态行
set expandtab               "以下三个配置配合使用，设置tab和缩进空格数
set shiftwidth=4
set tabstop=4
"set cursorline              "为光标所在行加下划线
set number                  "显示行号
set autoread                "文件在Vim之外修改过，自动重新读入

set ignorecase              "检索时忽略大小写
set fileencodings=uft-8,gbk "使用utf-8或gbk打开文件
set hls                     "检索时高亮显示匹配项
set helplang=cn             "帮助系统设置为中文
set foldmethod=syntax       "代码折叠
"}}

"conf for tabs, 为标签页进行的配置，通过ctrl h/l切换标签等
let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>

"conf for plugins {{ 插件相关的配置
"状态栏的配置 
"powerline{
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set laststatus=2
set t_Co=256
let g:Powerline_symbols = 'fancy'
let Powerline_symbols='compatible'
"}

"config for airline { 
"状态栏的配置
"vim-airline {
"let g:airline_powerline_fonts = 1
"let g:airline_enable_branch=1
"let g:airline_enable_syntastic=1
"let g:airline_detect_paste=1
"let g:airline_theme='solarized'
"}

"pathogen是Vim用来管理插件的插件
"pathogen{
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin  indent on
syntax on
"}

"python config{
" Disable pylint checking every save
"let g:pymode_lint_write = 0

" Set key 'R' for run python code
"let g:pymode_run_key = 'R'

" Load the whole plugin
"let g:pymode = 1

" Load show documentation plugin
"let g:pymode_doc = 1

" Key for show python documentation
"let g:pymode_doc_key = 'K'

" Load run code plugin
"let g:pymode_run = 1

" Key for run python code
"let g:pymode_run_key = '<leader>r'

"}

"}}

"map config{{

"autocmd vimenter * NERDTree
"open NERDTree with Ctrl+n {
map <C-n> :NERDTreeToggle<CR>
"}

"run python file with F2{
map <F2> <Esc>:w<CR>:!python %<CR>
"}

