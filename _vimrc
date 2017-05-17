set nocompatible
set backspace=indent,eol,start
set number
set ruler
" 突出显示当前行
set cursorline
filetype on
colorscheme molokai
syntax enable
set history=1000
syntax on
set autoindent
set mouse=a
set smartindent
set ai
set tabstop=4
set shiftwidth=4

set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
if has("win32")
	set fileencoding=chinese
else
	set fileencoding=utf-8
endif
"解决菜单乱码
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim
"解决consle输出乱码
language messages zh_CN.utf-8

" windows 启动最大化
autocmd GUIEnter * simalt ~x
" linux 启动最大化
" if has("gui_running")
"  " GUI is running or is about to start.
"  " Maximize gvim window (for an alternative on Windows, see simalt below).
"  set lines=999 columns=999
" else
"  " This is console Vim.
"  if exists("+lines")
"    set lines=50
"  endif
"  if exists("+columns")
"    set columns=100
"  endif
"endif
"去除备份
set nobackup
" set guifont=Courier\ 10\ Pitch\ 14
set guifont=Consolas:h13
"去除GUI的工具栏
set guioptions-=T
"set guioptions-=m
""" TAB键支持
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"
"set completeopt=menu
""" ctags
let Tlist_Ctags_Cmd="D:/developments/vim/Vim80/ctags58/ctags.exe"
""" taglist
"if MySys() == \"windows\"			"设定windows系统中ctags程序的位置
"    let Tlist_Ctags_Cmd = 'ctags'
"elseif MySys() == \"linux\"		"设定linux系统中ctags程序的位置
"    let Tlist_Ctags_Cmd = '/usr/bin/ctags'
"endif
let Tlist_Show_One_File=1			"不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow=1			"如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Left_Window=1			"在左侧窗口中显示taglist窗口
let Tlist_Show_Menu = 1

""" 通过WinManager插件来将TagList窗口和netrw窗口整合起来
let g:winManagerWindowLayout='FileExplorer|TagList'
let g:winManagerWidth=30
let g:AutoOpenWinManager=1     "自动打开
nmap wm :WMToggle<cr>
