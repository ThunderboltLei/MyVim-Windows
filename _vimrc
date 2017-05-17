set nocompatible
set backspace=indent,eol,start
set number
set ruler
" ͻ����ʾ��ǰ��
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
"����˵�����
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim
"���consle�������
language messages zh_CN.utf-8

" windows �������
autocmd GUIEnter * simalt ~x
" linux �������
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
"ȥ������
set nobackup
" set guifont=Courier\ 10\ Pitch\ 14
set guifont=Consolas:h13
"ȥ��GUI�Ĺ�����
set guioptions-=T
"set guioptions-=m
""" TAB��֧��
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"
"set completeopt=menu
""" ctags
let Tlist_Ctags_Cmd="D:/developments/vim/Vim80/ctags58/ctags.exe"
""" taglist
"if MySys() == \"windows\"			"�趨windowsϵͳ��ctags�����λ��
"    let Tlist_Ctags_Cmd = 'ctags'
"elseif MySys() == \"linux\"		"�趨linuxϵͳ��ctags�����λ��
"    let Tlist_Ctags_Cmd = '/usr/bin/ctags'
"endif
let Tlist_Show_One_File=1			"��ͬʱ��ʾ����ļ���tag��ֻ��ʾ��ǰ�ļ���
let Tlist_Exit_OnlyWindow=1			"���taglist���������һ�����ڣ����˳�vim
let Tlist_Use_Left_Window=1			"����ര������ʾtaglist����
let Tlist_Show_Menu = 1

""" ͨ��WinManager�������TagList���ں�netrw������������
let g:winManagerWindowLayout='FileExplorer|TagList'
let g:winManagerWidth=30
let g:AutoOpenWinManager=1     "�Զ���
nmap wm :WMToggle<cr>
