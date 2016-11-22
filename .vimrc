set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
execute pathogen#infect()

"""插件开启"""""""""""""""""""
Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'Valloric/ListToggle'
Bundle 'scrooloose/syntastic'
Bundle 'Yggdroot/indentLine'
let g:jedi#auto_initialization = 1
""""""""""""""""""""""""""""""
filetype plugin indent on
let g:pydiction_location = '/path/to/complete-dict'
set t_Co=256
set laststatus=2
set encoding=utf-8

"YouCompleteMe""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
"echo | clang -std=c++11 -stdlib=libc++ -v -E -x c++ -"
"YCM的配置文件无法找到STL所在的路径.STL所在的路径可以通过下列的命令来找到"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


syntax enable " 开启语法高亮功能
"set term=ansi 
syntax on " 允许用指定语法高亮配色方案替换默认方案

set laststatus=2
set nu! "左侧显示文本的行号，可以用以下语句
"set autoindent "自动缩进后，加括号

"set cindent " C/C++ 语言的自动缩进方式


"GNU缩进分割""""""""""""""""""""""""""""""""""""""""""""""""
set cindent
set cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1
set shiftwidth=2
set softtabstop=2
"set textwidth=79
set fo-=ro fo+=cql
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"Tab调整""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=2
set backspace=2
"tab变3个空格
" when indenting with '>', use 4 spaces width
"set shiftwidth=4
set ts=2
set expandtab
:%retab!
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"弹出菜单"""""""""""""""""""""""""""""""""""""""""""""""""""
hi Pmenu ctermfg=black ctermbg=gray  guibg=#444444
hi PmenuSel ctermfg=7 ctermbg=4 guibg=#555555 guifg=#ffffff
colorscheme darkblue
hi Normal  ctermfg=252 ctermbg=none "透明背景，忽略主题的背景颜色

let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"代码折叠"""""""""""""""""""""""""""""""""""""""""""""""""""
set foldmethod=indent "基于缩进或语法进行代码折叠
"set foldmethod=syntax  " 启动 vim 时关闭折叠代码（据说有毒这个
"set nofoldenable
"set foldcolumn=1 "1行或以上的代码会被折叠
set mouse=a "设置鼠标点击功能
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"YouCompleteMe 功能"""""""""""""""""""""""""""""""""""""""""
let g:ycm_complete_in_comments=1"		补全功能在注释中同样有效
let g:ycm_min_num_of_chars_for_completion=1  "输入第一个字符就开始补全  
let g:ycm_confirm_extra_conf=1 " 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_collect_identifiers_from_tags_files=1 " 开启 YCM 基于标签引擎
set tags+=/data/misc/software/misc./vim/stdcpp.tags " 引入 C++ 标准库tags，这个没有也没关系，只要.ycm_extra_conf.py文件中指定了正确的标准库路径
inoremap <leader>; <C-x><C-o> " YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
set completeopt-=preview" 补全内容不以分割子窗口形式出现，只显示补全列表
let g:ycm_min_num_of_chars_for_completion=1 " 从第一个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0 " 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1 " 语法关键字补全     
let g:ycm_key_invoke_completion = '<M-;>' " 修改对C函数的补全快捷键，默认是CTRL + space，修改为ALT + ;
nmap <M-g> :YcmCompleter GoToDefinitionElseDeclaration <C-R>=expand("<cword>")<CR><CR> " 设置转到定义处的快捷键为ALT + G，这个功能非常赞
 let g:ycm_error_symbol='>>'		"设置error和warning的提示符
let g:ycm_warning_symbol='>*'	"设置error和warning的提示符
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"终端设置"""""""""""""""""""""""""""""""""""""""""""""""""""
"终端光标的颜色：#41BAF5
"xterm的颜色开启：

" F5编译和运行C程序，C++程序,Python程序，shell程序，F9 gdb调试  
" " 请注意，下述代码在windows下使用会报错，需要去掉./这两个字符  
"   
"   " <F5> 编译和运行C  
"map <F5> :call CompileRunGcc()<CR>  
"func! CompileRunGcc()  
"exec "w"  
"exec "!gcc % -o %<"  
"exec "! ./%<"  
"endfunc  
"     
"< F5> 编译和运行C++  
map <F5> :call CompileRunGpp()<CR>  
func! CompileRunGpp()  
exec "w"  
exec "!g++ % -o %<"  
exec "! ./%<"  
endfunc  
"        
" <F5> 运行python程序  
"map <F5> :w<cr>:!python %<cr> 

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim
let g:indentLine_color_term = 239
"
" "GVim
let g:indentLine_color_gui = '#A4E57E'
"
" " none X terminal
let g:indentLine_color_tty_light = 4 " (default: 4)
let g:indentLine_color_dark = 2 " (default: 2)
let g:indentLine_char = '¦'
"let g:indentLine_concealcursor = 'vc' 
"let g:indentLine_conceallevel = 0
let g:indentLine_enabled = 1
"let g:indentLine_concealcursor = 'vc' "(default 'inc')
"let g:indentLine_conceallevel = 4 "(default 2)



"VimWiki设置""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype plugin on
"""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""VIM airline""""""""""""""""""""""""""""""""
Plugin 'vim-airline/vim-airline'
let g:airline_powerline_fonts = 1
Plugin 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = '|'
"let g:airline#extensions#tabline#left_alt_sep = '|'"
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#bufferline#overwrite_variables = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline_theme = 'solarized'
"""""""""""""""""""""""""""""""""""""""""""""""
