if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" 插件
call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-plug'
" 中文 幫助文檔
Plug 'yianwillis/vimcdoc'
" 視窗淡化
Plug 'TaDaa/vimade'
" 配色
Plug 'crusoexia/vim-monokai'
" Plug 'connorholyday/vim-snazzy'
" 彩色括號
Plug 'luochen1990/rainbow'
" 括號選取
" Plug 'gcmt/wildfire.vim'
Plug 'terryma/vim-expand-region'
" 添加括號
Plug 'machakann/vim-sandwich'
" 自動添加括號
Plug 'jiangmiao/auto-pairs'
" 多光標
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" 搜尋加強
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
" Plug 'haya14busa/incsearch-fuzzy.vim'
" 狀態欄
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'cohama/agit.vim'
" Undo
Plug 'mbbill/undotree'
" Tab Line
Plug 'Yggdroot/indentLine'
" Plug 'nathanaelkane/vim-indent-guides'
" 自動註釋
Plug 'preservim/nerdcommenter'
" Markdown
" Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown', 'vim-plug'] }
" coc
Plug 'elzr/vim-json'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
" 自動格式化
Plug 'vim-autoformat/vim-autoformat'
" Taglist
Plug 'liuchengxu/vista.vim'
Plug 'kshenoy/vim-signature'
" Debug
Plug 'puremourning/vimspector'
" Plug 'skywind3000/asyncrun.vim'
" Plug 'xianzhon/vim-code-runner'
" 檔案管理
" Plug 'preservim/nerdtree' |
"   \ Plug 'Xuyuanp/nerdtree-git-plugin' |
"   \ Plug 'tiagofumo/vim-nerdtree-syntax-highlight' |
"   \ Plug 'ryanoasis/vim-devicons'
" 自定義可視模式 il, ii ...
Plug 'kana/vim-textobj-user' |
      \ Plug 'kana/vim-textobj-indent' |
      \ Plug 'kana/vim-textobj-entire'
" sudo 權限
Plug 'lambdalisue/suda.vim'

call plug#end()

let g:coc_global_extension = [
      \ 'coc-json',
      \ 'coc-marketplace',
      \ 'coc-vimlsp',
      \ 'coc-pyright',
      \ 'coc-snippets',
      \ 'coc-explorer',
      \ 'coc-lists',
      \ 'coc-git',
      \ 'coc-diagnostic',
      \ 'coc-webview',
      \ 'coc-markdown-preview-enhanced',
      \ 'coc-translator'
      \ ]

set encoding=UTF-8
" 字體設置
" set guifont=Consolas_NF:h15:cANSI:qDRAFT
" 折疊
set foldenable
" 不創建 .un 檔案
set noundofile
" 不創建備份
set nobackup
" 顯示行號
set number
" 特殊行號
set relativenumber
" 顯示輸入符號
set showcmd
" 自動切換目錄
set autochdir
" 顯示輸入命令
set showcmd
" 去除錯誤提示聲
set noeb
" 忽略大小寫
set ignorecase
" 命令模式 TAB 補全列
set wildmenu
set wildmode=longest,full
" 取消自動註釋
set formatoptions-=ro
" autocmd BufRead,BufNewFile * if @% == 'vimrc' | set formatoptions-=ro | endif
autocmd BufRead,BufNewFile * set formatoptions-=ro
" 移動時保留行
set scrolloff=5

" 開啟摺疊
set foldmethod=indent
set foldlevel=99

" Esc 按鍵延遲修復
set ttimeoutlen=5

" 光標設置
"  1 -> blinking block
"  2 -> solid block
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

" 程式碼高亮
syntax on

filetype on
filetype plugin indent on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

autocmd FileType python execute('call TabPython()')
function TabPython()
  set tabstop=4
  set softtabstop=4
  set shiftwidth=4
  set textwidth=79
  set expandtab
  set autoindent
  set fileformat=unix
  execute('%retab 4')
endfunction

autocmd FileType javascript,html,css,xml,json,c,cpp,vim,markdown execute('call Tab2()')
function Tab2()
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
endfunction

autocmd FileType c,cpp,jave set cindent

""""""""""""""""
" color-monokai
""""""""""""""""
syntax on
colorscheme monokai

set termguicolors
set t_Co=256

" 關閉斜體
let g:monokai_term_italic = 0
let g:monokai_gui_italic = 0
" 光標行高亮
set cursorline

" 高亮顏色
highlight CursorLine cterm=None ctermbg=241 ctermfg=0

" 關閉響鈴,螢幕閃爍
set noerrorbells
set vb t_vb=

" 按鍵衝突
" <Tab> / <C-i>
" <ESC> / <C-[>
" <CR> / <C-m>

let g:mapleader = ' '
inoremap jk <ESC>
" au VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
" au VimLeave * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
" !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'


" Enter 自動換行
nnoremap <cr> A<cr><ESC>

" 清空行
nnoremap X 0d$

nnoremap dl diw
nnoremap dL d$

" 按鍵快速移動
nnoremap H 7h
nnoremap L 7l
nnoremap J 5j
nnoremap K 5k

" 保存 / 退出
nnoremap Q :q<CR>
nnoremap S :w<CR>

" 分割視窗移動
nmap <Leader>j <C-W><C-J>
nmap <Leader>k <C-W><C-K>
nmap <Leader>l <C-W><C-L>
nmap <Leader>h <C-W><C-H>
nmap <C-Up> <C-w>+
nmap <C-Down> <C-w>-
nmap <C-Left> <C-w><
nmap <C-Right> <C-w>>
nmap s= <C-w>=
nmap ss <C-w>s
nmap sv <C-w>v

" <Tab>鍵簡化
nnoremap > >>
nnoremap < <<

" Tab 窗口控制
nnoremap tn :tabedit<CR>
" nnoremap tj :tabnext<CR>
" nnoremap tk :tabNext<CR>
nmap tj <Plug>AirlineSelectNextTab
nmap tk <Plug>AirlineSelectPrevTab
nnoremap tc :tabclose<CR>

" 命令模式
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-k> <Up>
cnoremap <C-j> <Down>
cnoremap <C-h> <Left>
cnoremap <C-l> <Right>
cnoremap <C-u> <S-Left>
cnoremap <C-o> <S-Right>

" 插入模式
inoremap <C-a> <Esc>I
inoremap <C-e> <Esc>A

" 可視模
vnoremap H 7h
vnoremap L 7l
vnoremap J 5j
vnoremap K 5k

" 系統剪貼簿
vnoremap Y "+y

inoremap <C-p> <Esc>"+pa
nnoremap <C-p> "+p

" 頭尾移動
nnoremap <silent><expr> 0 ":call JumpHomeEnd()\<CR>"
fun! JumpHomeEnd()
  let pos = col('.')
  normal! ^
  if pos == col('.')
    normal! $
  endif
endf

nnoremap <C-a> ggvG$

" 開啟文件回到上次編輯位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

nnoremap R :call CompileShowAssembly()<CR><C-w>L
function! CompileShowAssembly() 
  set splitright
  execute "!g++ -o %< -g -std=c++17 %"
  terminal objdump -S %<
  set nonumber
  set norelativenumber
endfunction

"""""""""""""
" 添加檔案頭
"""""""""""""
" autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java execute("call SetTitle()")
"
" func SetTitle()
"   if &filetype == 'sh'
"     call append(line("."), "#!/bin/sh")
"     call append(line(".")+1, "")
"   endif
"   if &filetype == 'cpp'
"     call append(line("."), "#include<iostream>")
"     call append(line(".")+1, "using namespace std;")
"     call append(line(".")+2, "")
"   endif
"   if &filetype == 'c'
"     call append(line("."), "#include<stdio.h>")
"     call append(line(".")+1, "")
"   endif
"
"   autocmd BufNewFile * normal G
" endfunc

"""""""""
" vimade
"""""""""
let g:vimade = {}
let g:vimade.fadelevel = 0.7
let g:vimade.enablesigns = 1

""""""""""
" rainbow
""""""""""
let g:rainbow_active = 1

" 'guifgs': 一个guifg的列表 (:h highlight-guifg), 即GUI界面的括号颜色, 将按顺序循环使用
" 'guis': 一个gui的列表 (:h highlight-gui), 将按顺序循环使用
" 'ctermfgs': 一个ctermfg的列表 (:h highlight-ctermfg), 即终端下的括号颜色
" 'cterms': 一个cterm的列表 (:h highlight-cterm)
" 'operators': 描述你希望哪些运算符跟着与它同级的括号一起高亮(注意：留意需要转义的特殊字符，更多样例见这里, 你也可以读vim帮助 :syn-pattern)
" 'parentheses': 一个关于括号定义的列表, 每一个括号的定义包含形如以下的部分: start=/(/, step=/,/, stop=/)/, fold, contained, containedin=someSynNames, contains=@Spell. 各个部分具体含义可参考 :h syntax, 其中 step 为本插件的扩展定义, 表示括号中间需要高亮的运算符.
" 'separately': 针对文件类型(由&ft决定)作不同的配置,未被单独设置的文件类型使用*下的配置,值为0表示仅对该类型禁用插件,值为"default"表示使用针对该类型的默认兼容配置 (注意, 默认兼容配置可能随着该插件版本的更新而改变, 如果你不希望它改变, 那么你应该将它拷贝一份放到你的vimrc文件里).
" 省略某个字段以使用默认设置
let g:rainbow_conf = {
      \ 'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
      \ 'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
      \ 'operators': '_,_',
      \ 'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
      \ 'separately': {
      \   '*': {},
      \   'tex': {
      \     'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
      \   },
      \   'lisp': {
      \     'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
      \   },
      \   'vim': {
      \     'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
      \   },
      \   'html': {
      \     'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
      \   },
      \   'css': 0
      \ }
      \}

"""""""""""""""
" wildfire.vim
"""""""""""""""
" map e <Plug>(wildfire-fuel)
" vmap E <Plug>(wildfire-water)
" nmap <Leader>s <Plug>(wildfire-quick-select)
let g:wildfire_objects = {
      \ "*" : ["iw", "iW", "i'", "a'", 'i"', 'a"', "ib", "ab", "iB", "aB"],
      \ "html,xml" : ["at", "it"],
      \ "markdown" : ["iw", "iW", "i`", "a`", "i|", "i'", "a'", 'i"', 'a"', "i)", "a)", "i>", "a>" , "i]", "a]", "i}", "a}"],
      \ }

""""""""""""""""""""
" vim-expand-region
""""""""""""""""""""
map e <Plug>(expand_region_expand)
map E <Plug>(expand_region_shrink)
let g:expand_region_text_objects = {
      \ 'iw'  :0,
      \ 'iW'  :0,
      \ 'i"'  :0,
      \ 'a"'  :0,
      \ 'i''' :0,
      \ 'a''' :0,
      \ 'i('  :1,
      \ 'a('  :1,
      \ 'i['  :1,
      \ 'a['  :1,
      \ 'i<'  :1,
      \ 'a<'  :1,
      \ 'i{'  :1,
      \ 'a{'  :1,
      \ 'il'  :0,
      \ 'ii'  :1,
      \ 'ai'  :1,
      \ 'iB'  :1,
      \ 'aB'  :1
      \ }

call expand_region#custom_text_objects('markdown', {
      \ 'i|'  :0
      \})

call expand_region#custom_text_objects('html', {
      \ 'it'  :1,
      \ 'at'  :1
      \})
""""""""""""""""""""""""
" kana/vim-textobj-user
""""""""""""""""""""""""

" il 選取行
call textobj#user#plugin('line', {
      \   '-': {
      \     'select-a-function': 'CurrentLineA',
      \     'select-a': 'al',
      \     'select-i-function': 'CurrentLineI',
      \     'select-i': 'il',
      \   },
      \ })

function! CurrentLineA()
  normal! 0
  let head_pos = getpos('.')
  normal! $
  let tail_pos = getpos('.')
  return ['v', head_pos, tail_pos]
endfunction

function! CurrentLineI()
  normal! ^
  let head_pos = getpos('.')
  normal! g_
  let tail_pos = getpos('.')
  let non_blank_char_exists_p = getline('.')[head_pos[2] - 1] !~# '\s'
  return
        \ non_blank_char_exists_p
        \ ? ['v', head_pos, tail_pos]
        \ : 0
endfunction

""""""""""""""""
" vim-sandwich
"""""""""""""""

" 可視模式加入括號
vmap ( sa(h
vmap ) sa(h%l
vmap [ sa[h
vmap ] sa[h%l
vmap { sa{h
vmap } sa{h%l
" vmap a< sa<h
vmap " sa"h
vmap ' sa'h

let g:sandwich#recipes = deepcopy(g:sandwich#default_recipes)
" 插入括號自動 Tab
let g:sandwich#recipes += [
      \   {
      \     'buns'        : ['{', '}'],
      \     'motionwise'  : ['line'],
      \     'kind'        : ['add'],
      \     'linewise'    : 1,
      \     'command'     : ["'[+1,']-1normal! >>"],
      \   },
      \   {
      \     'buns'        : ['{', '}'],
      \     'motionwise'  : ['line'],
      \     'kind'        : ['delete'],
      \     'linewise'    : 1,
      \     'command'     : ["'[,']normal! <<"],
      \   }
      \ ]

"""""""""""""
" auto-pairs
"""""""""""""
let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"'}
autocmd FileType markdown let b:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', "`":"`", '```':'```'}
autocmd FileType html,xml let b:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', "<":">"}
autocmd FileType vim let b:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', "<":">"}
autocmd BufRead,BufNewFile coc-settings.json let b:AutoPairs = {'(':')', '[':']', '{':'}'}

" 退格鍵刪除
let g:AutoPairsMapBS = 1
" 括號回車鍵自動換行
let g:AutoPairsMapCR = 1
" 括號內插入空格
let g:AutoPairsMapSpace = 1
" 快速移動模式
let g:AutoPairsFlyMode = 0

" <C-h>刪除成對括號(僅限內部無字符時)
let g:AutoPairsMapCh = 0
let g:AutoPairsMultilineClose = 1


let g:AutoPairsShortcutToggle = ''
let g:AutoPairsMoveCharacter = ''
let g:AutoPairsShortcutFastWrap = '<C-o>'
" let g:AutoPairsShortcutJump = '<C-l>'
" let g:AutoPairsShortcutBackInsert = '<C-u>'

" 刪除成對括號
imap <C-h> <Esc>sdbi

" 跳到括號處
inoremap <silent><expr> <C-f> "\<Esc>:call MyAutoPairsJump()\<CR>a"
function! MyAutoPairsJump()
  call search('["\[\]''(){}<>]','W')
endfunction

"""""""""""""""""""
" vim-visual-multi
"""""""""""""""""""
let g:VM_default_mappings = 0
let g:VM_mouse_mappings = 0

let g:VM_maps = {}
let g:VM_maps['Find Under'] = '<C-n>'
let g:VM_maps['Find Subword Under'] = '<C-n>'
let g:VM_maps['Select Cursor Down'] = '<C-j>'
let g:VM_maps['Select Cursor Up'] = '<C-k>'
let g:VM_maps['Add Cursor Down'] = '<C-j>'
let g:VM_maps['Add Cursor Up'] = '<C-k>'

let g:VM_Mono_hl   = 'DiffText'
let g:VM_Extend_hl = 'DiffAdd'
let g:VM_Cursor_hl = 'Visual'
let g:VM_Insert_hl = 'DiffChange'

""""""""""""""
" vim-airline
""""""""""""""
let g:airline_theme='desertink'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#tabline#buffer_min_count = 2
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#keymap#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_idx_format = {
      \ '0': '0 ',
      \ '1': '1 ',
      \ '2': '2 ',
      \ '3': '3 ',
      \ '4': '4 ',
      \ '5': '5 ',
      \ '6': '6 ',
      \ '7': '7 ',
      \ '8': '8 ',
      \ '9': '9 '
      \}

" 设置切换tab的快捷键 <\> + <-> 切换到前一个 tab
nmap bk <Plug>AirlineSelectPrevTab
" 设置切换tab的快捷键 <\> + <+> 切换到后一个 tab
nmap bj <Plug>AirlineSelectNextTab
" 设置切换tab的快捷键 <\> + <q> 退出当前的 tab
nmap bc :bp<cr>:bd #<cr>

nmap <Leader>1 <Plug>AirlineSelectTab1
nmap <Leader>2 <Plug>AirlineSelectTab2
nmap <Leader>3 <Plug>AirlineSelectTab3
nmap <Leader>4 <Plug>AirlineSelectTab4
nmap <Leader>5 <Plug>AirlineSelectTab5
nmap <Leader>6 <Plug>AirlineSelectTab6
nmap <Leader>7 <Plug>AirlineSelectTab7
nmap <Leader>8 <Plug>AirlineSelectTab8
nmap <Leader>9 <Plug>AirlineSelectTab9

" 添加檔案顯示名稱
let g:airline_filetype_overrides = {
      \ 'coc-explorer':  [ 'CoC Explorer', '' ],
      \ 'defx':  ['defx', '%{b:defx.paths[0]}'],
      \ 'fugitive': ['fugitive', '%{airline#util#wrap(airline#extensions#branch#get_head(),80)}'],
      \ 'floggraph':  [ 'Flog', '%{get(b:, "flog_status_summary", "")}' ],
      \ 'gundo': [ 'Gundo', '' ],
      \ 'help':  [ 'Help', '%f' ],
      \ 'minibufexpl': [ 'MiniBufExplorer', '' ],
      \ 'nerdtree': [ get(g:, 'NERDTreeStatusline', 'NERD'), '' ],
      \ 'startify': [ 'startify', '' ],
      \ 'vim-plug': [ 'Plugins', '' ],
      \ 'vimfiler': [ 'vimfiler', '%{vimfiler#get_status_string()}' ],
      \ 'vimshell': ['vimshell','%{vimshell#get_status_string()}'],
      \ 'vaffle' : [ 'Vaffle', '%{b:vaffle.dir}' ],
      \ }

""""""""""""
" NERDTree
""""""""""""
set encoding=UTF-8
" nnoremap tt :NERDTreeToggle<CR>

" 顯示隱藏文件
let NERDTreeShowHidden=1

" 視窗大小
let NERDTreeWinSize=20

" 關閉最上方幫助選單
let NERDTreeMinimalUI=1

" 資料夾開啟圖標
" let NERDTreeDirArrowExpandable = "\u00a0"
" let NERDTreeDirArrowCollapsible = "\u00a0"
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '~'

" 启动 NERDTree 如果指定了一个文件，则将光标移至其窗口
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" 当 Vim 以目录参数启动时，启动 NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
      \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

" 關閉視窗時，視窗只剩下 NERDTree，則會關閉 Vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q |endif

let g:airline#extensions#nerdtree_statusline = 0

"""""""""""""""
" NERDTree-git
"""""""""""""""
let g:NERDTreeGitStatusShowIgnored = 1
" 符號設置
let g:NERDTreeGitStatusIndicatorMapCustom = {
      \ 'Modified'  :'✹',
      \ 'Staged'    :'✚',
      \ 'Untracked' :'✭',
      \ 'Renamed'   :'➜',
      \ 'Unmerged'  :'═',
      \ 'Deleted'   :'✖',
      \ 'Dirty'     :'✗',
      \ 'Ignored'   :'☒',
      \ 'Clean'     :'✔︎',
      \ 'Unknown'   :'?',
      \ }

"""""""""""""""
" vim-devicons
"""""""""""""""
set encoding=UTF-8
" 啟動 Devicons
let g:webdevicons_enable_nerdtree = 1

" 符號後間隔
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ''

" 符號周圍的括號
let g:webdevicons_conceal_nerdtree_brackets = 1

" 添加到 vim-airline 標籤行中
let g:webdevicon_enable_airline_tabline = 1

" 添加到 vim-airline 狀態行中
let g:webdevicons_enable_airline_statusline = 1

"""""""""""""""""""""""""""""""""
" vim-nerdtree-sysntax-highlight
"""""""""""""""""""""""""""""""""
"如果这个插件设置了，则禁用未匹配的文件夹和文件图标的颜色与它们的
"标签相同（通常是绿色和白色）（它可能是由你正在使用的其他插件设置）
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1

let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:Turquoise = "40E0D0"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = "FE405F"
let s:git_orange = "F54D27"
let s:gray = "808A87"

"""""""""""
" coc-nvim
"""""""""""
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=100
set shortmess+=c

nmap tt :CocCommand explorer<CR>

" <Tab> 鍵控制補全
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<Tab>" 
inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-Tab>" 

" 查看報錯信息
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" 自動修復
nmap <Leader>qf  <Plug>(coc-fix-current)

" 跳轉到定義
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" 顯示文黨
nnoremap <silent> <Leader>H :call <SID>show_documentation()<CR>
vnoremap <silent> <Leader>H :<C-u>call <SID>visual_show_documentation(visualmode())<CR>

function! s:visual_show_documentation(type)
  if index(['vim','help'], &filetype) >= 0 && a:type ==# 'v'
    let saved_unnamed_register = @@
    normal! `<v`>y
    let word = substitute(@@, '\n$', '', 'g')
    let @@ = saved_unnamed_register
    execute 'h '.word
  endif
endfunction

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" 高亮顯示相同字符串
autocmd CursorHold * silent call CocActionAsync('highlight')

" 變數重新命名
nmap <Leader>rn <Plug>(coc-rename)

" 格式化程式碼
" xmap <Leader>f  <Plug>(coc-format-selected)
" nmap <Leader>f  <Plug>(coc-format-selected)

" 滾動浮動窗口
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" 可視模式選取
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

"""""""""""""""
" coc-snippets
"""""""""""""""
" 觸發 snippets
" imap <C-l> <Plug>(coc-snippets-expand)

" 選擇文字做為佔位符
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
" imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <Leader>x for convert visual selected code to snippet
xmap <Leader>x  <Plug>(coc-convert-snippet)

inoremap <silent><expr> <C-l>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#refresh()

inoremap <silent><expr> <C-j>
      \ pumvisible() && !coc#jumpable() ? coc#_select_confirm() :
      \ coc#refresh()

"""""""""""""""""
" coc-translator
"""""""""""""""""
nmap ts <Plug>(coc-translator-p)
vmap ts <Plug>(coc-translator-pv)

""""""""""
" coc-git
""""""""""
" 瀏覽 git 修改塊
nmap [h <Plug>(coc-git-prevchunk)
nmap ]h <Plug>(coc-git-nextchunk)
" 瀏覽衝突
nmap [c <Plug>(coc-git-prevconflict)
nmap ]c <Plug>(coc-git-nextconflict)
" 顯示當前塊的修改
nmap gs <Plug>(coc-git-chunkinfo)
" Git 狀態, 歷史紀錄
nnoremap <silent> <Leader>gs  :<C-u>CocList --normal gstatus<CR>
nnoremap <silent> <Leader>gc  :<C-u>CocList --normal commits<CR>
" 可視模式選取
omap ig <Plug>(coc-git-chunk-inner)
xmap ig <Plug>(coc-git-chunk-inner)
omap ag <Plug>(coc-git-chunk-outer)
xmap ag <Plug>(coc-git-chunk-outer)

""""""""""""
" coc-lists
""""""""""""

nnoremap <silent> <Leader>u  :<C-u>CocNext<CR>
nnoremap <silent> <Leader>i  :<C-u>CocPrev<CR>
nnoremap <silent> <Leader>p  :<C-u>CocListResume<CR>

nnoremap <silent> <Leader>ce :<C-u>CocList --normal files<CR>
nnoremap <silent> <Leader>cg :<C-u>CocList -I --normal grep<CR>
nnoremap <silent> <Leader>ct :<C-u>CocList --normal tags<CR>

nnoremap <silent> <Leader>w  :exe 'CocList -I --normal --input='.expand('<cword>').' words'<CR>
vnoremap <leader>w :<C-u>call <SID>BufGrepFromSelected(visualmode())<CR>
function! s:BufGrepFromSelected(type)
  let saved_unnamed_register = @@
  if a:type ==# 'v'
    normal! `<v`>y
  elseif a:type ==# 'char'
    normal! `[v`]y
  else
    return
  endif
  let word = substitute(@@, '\n$', '', 'g')
  let word = escape(word, '| ')
  let @@ = saved_unnamed_register
  execute 'CocList -I --normal --input='.word.' words'
endfunction

nnoremap <silent> <Leader>f :exe 'CocList -I --normal --input='.expand('<cword>').' grep'<CR>
vnoremap <leader>f :<C-u>call <SID>GrepFromSelected(visualmode())<CR>

function! s:GrepFromSelected(type)
  let saved_unnamed_register = @@
  if a:type ==# 'v'
    normal! `<v`>y
  elseif a:type ==# 'char'
    normal! `[v`]y
  else
    return
  endif
  let word = substitute(@@, '\n$', '', 'g')
  let word = escape(word, '| ')
  let @@ = saved_unnamed_register
  execute 'CocList --normal grep '.word
endfunction

"""""""""""""""""
" vim-autoformat
"""""""""""""""""
noremap <F7> :Autoformat<CR>
" 自動縮進
let g:autoformat_autoindent = 1
" 自動重製 Tab 鍵
let g:autoformat_retab = 1
" 刪除空白
let g:autoformat_remove_trailing_spaces = 1
" 對同個文件使用多種方式格式化
" html => js / css
let g:formatters_vue = ['eslint_local', 'stylelint']
let g:run_all_formatters_vue = 1

" C 格式化配置
let g:formatdef_hl_c='"clang-format -style=\"{
      \ BasedOnStyle: LLVM, 
      \ AlignAfterOpenBracket: true,
      \ AllowShortFunctionsOnASingleLine: Empty,
      \ SpacesBeforeTrailingComments: 1,
      \ BinPackParameters: false,
      \ IndentCaseLabels: true,
      \ IndentGotoLabels: false,
      \ AlwaysBreakTemplateDeclarations: Yes
      \ }\""'
let g:formatters_c = ['hl_c']
let g:formatters_cpp = ['hl_c']

autocmd BufWrite *.c,*.cpp,*.py,*.vim :Autoformat

"""""""""""
" Run Code
"""""""""""
" map  <F9>  :w<CR>:call Run()<CR>
" imap <F9>  <ESC>:w<CR>:call Run()<CR>
" map  <F10> :w<CR>:call Debug()<CR>
" imap <F10> <ESC>:w<CR>:call Debug()<CR>
"
" func!  Debug()
"     if expand("%:e") == "c" || expand("%:e") == "cc" || expand("%:e") == "cxx" || expand("%:e") == "cpp"
"         exe ":setlocal makeprg=".'g++\ %\ -o\ %<\ -gstabs+'
"         echohl WarningMsg | echo " compiling..."
"         silent make
"         exe ":!gdb %<"
"         redraw!
"         echohl WarningMsg | echo " Debug finish! :-)"
"     else
"         redraw!
"         echo "Language not support! :-("
"     endif
" endfunc
"
" func! Run()
"     if expand("%:e") == "py"
"         ! Python -u "%<.py"
"         redraw!
"         echohl WarningMsg | echo " Running finish! :-)"
"     elseif expand("%:e") == "c" || expand("%:e") == "cc" || expand("%:e") == "cxx" || expand("%:e") == "cpp"
"         echo " compiling..."
"         exec "!clear"
"         exec "!g++ % -o %<"
"   exec "!./%<"
"         echohl WarningMsg | echo " Running finish! :-)"
"     elseif expand("%:e") == "r"
"         exe ":! Rscript %"
"         redraw!
"         echohl WarningMsg | echo " Running finish! :-)"
"     elseif expand("%:e") == "vbs"
"         exe ":! %"
"         redraw!
"         echohl WarningMsg | echo " Running finish! :-)"
"         redraw!
"         echohl WarningMsg | echo " Running finish! :-)"
"     elseif expand("%:e") == "md"
"         :MarkdownPreview
"         redraw!
"         echohl WarningMsg | echo " Running on Chrome! :-)"
"     elseif expand("%:e") == "tex"
"         "<localleader>ll
"         \\ll
"         ":vimtex-compile
"     else
"         redraw!
"         echo "Language not support! :-("
"     endif
" endfunction

"""""""""""""""
" asyncrun.vim
"""""""""""""""
" 執行自動開啟視窗,窗口行數
" let g:asyncrun_open = 6

" nmap <F8> :AsyncRun g++ -O3 "$(VIM_FILEPATH)" -o "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" -lpthread <CR>"$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <CR>

""""""""""""""""""
" vim-code-runner
""""""""""""""""""
" nmap <silent><F10> <Plug>CodeRunner
"
" " 執行自動保存
" let g:code_runner_save_before_execute = 1
"
" " 輸出視窗大小
" let g:code_runner_output_window_size = 6
"
" " 檔案執行命令
" let g:CodeRunnerCommandMap = {
"   \ 'python' : 'python $fileName',
"   \ 'cpp' : 'g++ $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt && rm ./$fileNameWithoutExt'
"   \}

"""""""""""""
" vimspector
"""""""""""""
"       配置按鍵
" F5            開始除錯，繼續除錯
" F3            中止除錯
" F4            使用相同配置重新除錯
" F6            暫停除錯
" F9            添加行斷點
" <Leader>F9    添加條件斷點
" F8            添加函數斷點
" <Leader>F8    運行到光標處
" F10           完成步驟
" F11           下一步驟
" F12           退出當前函數
" Ctrl + C      退出除錯
let g:vimspector_enable_mappings='HUMAN'
nmap <C-c> :call vimspector#Reset()<CR>

" Debug Mode 獲取光標處詳細資訊
nmap <Leader>di <Plug>VimspectorBalloonEval
xmap <Leader>di <Plug>VimspectorBalloonEval
" let g:vimspector_variables_display_mode = 'full'
" <Ctrl-Enter> 或 <Leader><Enter> 修改變數
" 變數格時使用 i 獲取詳細資訊
autocmd BufRead,BufNewFile *.Variables nmap <buffer> i <Plug>VimspectorBalloonEval
" dd 刪除觀察變數
autocmd BufRead,BufNewFile *.Watches nmap <buffer> dd <Del>

autocmd BufEnter vimspector.Console set nonumber
autocmd BufEnter vimspector.Console set norelativenumber
autocmd BufEnter !/bin/sh* set nonumber
autocmd BufEnter !/bin/sh* set norelativenumber
autocmd BufEnter !/usr/bin/python* set nonumber
autocmd BufEnter !/usr/bin/python* set norelativenumber

" 行斷點
sign define vimspectorBP            text=\ ● texthl=WarningMsg
" 有條件斷點
sign define vimspectorBPCond        text=\ ◆ texthl=WarningMsg
" 日誌點
sign define vimspectorBPLog         text=\ ◆ texthl=SpellRare
" 以停用的斷點
sign define vimspectorBPDisabled    text=\ ● texthl=LineNr
" 執行點
sign define vimspectorPC            text=\ ▶ texthl=MatchParen linehl=CursorLine
" 執行點和斷點
sign define vimspectorPCBP          text=●▶  texthl=MatchParen linehl=CursorLine
" Focussed thread in stack trace view
sign define vimspectorCurrentThread text=▶   texthl=MatchParen linehl=CursorLine
" Current stack frame in stack trace view
sign define vimspectorCurrentFrame  text=▶   texthl=Special    linehl=CursorLine

" 側邊欄顯示優先權
let g:vimspector_sign_priority = {
      \ 'vimspectorBP':            9,
      \ 'vimspectorBPCond':        9,
      \ 'vimspectorBPLog':         9,
      \ 'vimspectorBPDisabled':    9,
      \ 'vimspectorPC':            200,
      \ 'vimspectorPCBP':          200,
      \ 'vimspectorCurrentThread': 200,
      \ 'vimspectorCurrentFrame':  200,
      \ }

" UI 大小
let g:vimspector_sidebar_width = 38
let g:vimspector_bottombar_height = 10
let g:vimspector_code_minwidth = 82
let g:vimspector_terminal_maxwidth = 36
let g:vimspector_terminal_minwidth = 10

let g:vimspector_base_dir = expand( '$HOME/.vim/vimspector-config' )
let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools', 'CodeLLDB' ]

"""""""""""""
" indentLine
"""""""""""""
let g:indentLine_enabled = 1

" 樣式
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" 設定語法隱藏
let g:indentLine_concealcursor = ''
let g:indentLine_conceallevel = 2

let g:vim_json_syntax_conceal = 0
let g:markdown_syntax_conceal=0

" 白名單
let g:indentLine_fileType = ['c', 'cpp', 'python', 'java', 'json', 'js', 'html', 'css', 'vim']
" 黑名單
" let g:indentLine_fileTypeExclude = ['text']
" let g:indentLine_bufTypeExclude = ['help', 'terminal']
" let g:indentLine_bufNameExclude = [
"       \ '.coc-explorer.-\d',
"       \ 'vimspector.Variables',
"       \ 'vimspector.Watches',
"       \ 'vimspector.StackTrace',
"       \ 'vimspector.Console'
"       \ ]

let g:indentLine_color_gui = '#8e8e8e'
" let g:indentLine_bgcolor_gui = '#272822'

""""""""""""""""""""
" vim-indent-guides
""""""""""""""""""""
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'coc-explorer']
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 0

let g:indent_guides_auto_colors = 0

hi IndentGuidesOdd  ctermbg=236
hi IndentGuidesEven ctermbg=237

""""""""""""""""""""
" markdown snippets
""""""""""""""""""""
autocmd Filetype markdown source $HOME/.vim/markdown-snippets.vim

"""""""""""""""""""""""
" vim-instant-markdown
"""""""""""""""""""""""
" 即時刷新
let g:instant_markdown_slow = 0

let g:instant_markdown_autostart = 1
let g:instant_markdown_allow_unsafe_content = 1
let g:instant_markdown_allow_external_content = 1

" 開放遠程監聽
let g:instant_markdown_open_to_the_world = 0

let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
let g:instant_markdown_mathjax = 1
let g:instant_markdown_mermaid = 1
let g:instant_markdown_browser = "google-chrome --new-window"
let g:instant_markdown_port = 8090

"""""""""""""""""
" vim-table-mode
"""""""""""""""""
nmap <Leader>tm :TableModeToggle<CR>

autocmd BufRead,BufNewFile *.md nmap <buffer> S <Leader>tr:w<CR>

autocmd BufEnter *.md :silent execute('TableModeEnable')
autocmd BufLeave *.md :silent execute('TableModeDisable')
" 切換表格
let g:table_mode_toggle_map = '<Leader>tm'
" 格式化
let g:table_mode_realign_map = '<Leader>tr'
" 刪除列
let g:table_mode_delete_column_map = '<Leader>td'
" 添加列
let g:table_mode_insert_column_after_map = '<Leader>ti'
let g:table_mode_insert_column_before_map = '<Leader>tI'

let g:table_mode_auto_align = 1
let g:table_mode_update_time = 100
let g:table_mode_tableize_auto_border = 0
let g:table_mode_disable_tableize_mappings = 1

let g:table_mode_map_prefix = ''
let g:table_mode_delete_row_map = ''
let g:table_mode_add_formula_map = ''
let g:table_mode_eval_expr_map = ''
let g:table_mode_motion_up_map = ''
let g:table_mode_motion_down_map = ''
let g:table_mode_motion_left_map = ''
let g:table_mode_motion_right_map = ''
let g:table_mode_echo_cell_map = ''

let g:table_mode_cell_text_object_a_map = 'a<Bar>'
let g:table_mode_cell_text_object_i_map = 'i<Bar>'


" function! s:isAtStartOfLine(mapping)
"   let text_before_cursor = getline('.')[0 : col('.')-1]
"   let mapping_pattern = '\V' . escape(a:mapping, '\')
"   let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
"   return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
" endfunction
"
" inoreabbrev <expr> <bar><bar>
"   \ <SID>isAtStartOfLine('\|\|') ?
"   \ '<c-o>:TableModeEnable<cr><bar>---<bar>' : '<bar><bar>'
" inoreabbrev <expr> __
"   \ <SID>isAtStartOfLine('__') ?
"   \ '<c-o>:silent! TableModeDisable<cr>' : '__'

"""""""""""""""""""
" vim-markdown-toc
"""""""""""""""""""
" GitHub
nmap <Leader>tg :GenToGFM<CR>
" Tedcarpet
" nmap <Leader>tr :GenTocRedcarpet<CR>
" GitLab
" nmap <Leader>tl :GenTocGitLab<CR>

let g:vmt_auto_update_on_save = 1
let g:vmt_dont_insert_fence = 0
let g:vmt_cycle_list_item_markers = 1
let g:vmt_list_item_char = '-'

"""""""""""""""""""""""""""""""
" coc-markdown-preview-enhanced
"""""""""""""""""""""""""""""""
autocmd FileType markdown nnoremap <buffer> <F5> :CocCommand markdown-preview-enhanced.openPreview<CR>

""""""""""""
" vista.vim
""""""""""""
noremap T :Vista!!<CR>
" noremap <C-t> :silent! Vista finder coc<CR>

function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

" let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
" let g:vista_icon_indent = ["▸ ", ""]
let g:vista_default_executive = 'coc'
let g:vista_executive_for = {
      \ 'cpp': 'coc',
      \ 'php': 'coc',
      \ }
" let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
      \ "function": "\uf794",
      \ "variable": "\uf71b",
      \ }
let g:scrollstatus_size = 15

""""""""""""""""
" vim-gitgutter
""""""""""""""""
let g:gitgutter_map_keys = 0
let g:gitgutter_sign_allow_clobber = 1
let g:gitgutter_sign_priority = 5
let g:gitgutter_set_sign_backgrounds = 1
let g:gitgutter_preview_win_floating = 1
let g:gitgutter_sign_added = '▎'
let g:gitgutter_sign_modified = '░'
let g:gitgutter_sign_removed = '▏'
let g:gitgutter_sign_removed_first_line = '▏'
let g:gitgutter_sign_modified_removed = '▒'
let g:gitgutter_max_signs = -1

highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

nmap <Leader>ga <Plug>(GitGutterStageHunk)
nmap <Leader>gu <Plug>(GitGutterUndoHunk)

"""""""""""
" agit.vim
"""""""""""
noremap <Leader>gt :Agit<CR>
let g:agit_max_log_lines = 1000
let g:agit_no_default_mappings = 0

" Default Map keys
" J       <Plug>(agit-scrolldown-stat)
" K       <Plug>(agit-scrollup-stat)
" <C-j>   <Plug>(agit-scrolldown-diff)
" <C-k>   <Plug>(agit-scrollup-diff)
" u       <PLug>(agit-reload)
" yh      <Plug>(agit-yank-hash)
" <C-g>   <Plug>(agit-print-commitmsg)
" q       <Plug>(agit-exit)
" C       <Plug>(agit-git-checkout)
" cb      <Plug>(agit-git-checkout-b)
" D       <Plug>(agit-git-branch-d)
" rs      <Plug>(agit-git-reset-soft)
" rm      <Plug>(agit-git-reset)
" rh      <Plug>(agit-git-reset-hard)
" rb      <Plug>(agit-git-rebase)
" ri      <Plug>(agit-git-rebase-i)
" di      <Plug>(agit-diff)
" dl      <Plug>(agit-diff-with-local)

"""""""""""""""
" vim-fugitive
"""""""""""""""
" 自動修改 git to Git
fun! SetupCommandAlias(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfun
call SetupCommandAlias("git", "Git")


""""""""""
" udotree
""""""""""
noremap U :UndotreeToggle<CR>
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1
let g:undotree_SplitWidth = 24
function g:Undotree_CustomMap()
  nmap <buffer> k <Plug>UndotreeNextState
  nmap <buffer> j <Plug>UndotreePreviousState
  nmap <buffer> K 5<Plug>UndotreeNextState
  nmap <buffer> J 5<Plug>UndotreePreviousState
endfunc

""""""""""""""""
" nerdcommenter
""""""""""""""""
let g:NERDCreateDefaultMappings = 0
" 加上/刪除 註釋
map mm <Plug>NERDCommenterToggle
" 加上註釋
map mn <Plug>NERDCommenterComment
" 註釋後添加空格
let g:NERDSpaceDelims = 1
" 多行數註釋,使用緊湊語法
let g:NERDCompactSexyComs = 1
" 對齊方式
let g:NERDDefaultAlign = "left"
" 設置語言使用默認註釋符
let g:NERDAltDelims_java = 1
" 添加默認職
let g:NERDCustomDelimiters = { 'c': { 'left': '/*','right': '*/' } }
" 允許註釋空行（多行註釋）
let g:NERDCommentEmptyLines = 1
" 刪除尾部空白
let g:NERDTrimTrailingWhitespace = 1
" 檢查選擇行是否有註釋
let g:NERDToggleCheckAllLines = 1

""""""""""""""""
" incsearch.vim
""""""""""""""""
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

""""""""""""""""""""""
" incsearch-fuzzy.vim
""""""""""""""""""""""
" map <Leader>/ <Plug>(incsearch-fuzzyspell-/)
" map <Leader>? <Plug>(incsearch-fuzzyspell-?)
" map <Leader>g/ <Plug>(incsearch-fuzzyspell-stay)

""""""""""""""""
" vim-easymotion
""""""""""""""""
let g:EasyMotion_do_mapping = 0
" 忽略大小寫
let g:EasyMotion_smartcase = 1

" 單字移動
nmap , <Plug>(easymotion-overwin-f)
" 雙單字移動
nmap . <Plug>(easymotion-overwin-f2)

" 行移動
" map z <Plug>(easymotion-bd-jk)
" nmap z <Plug>(easymotion-overwin-line)

" " 搜索調用
" function! s:incsearch_config(...) abort
"   return incsearch#util#deepextend(deepcopy({
"   \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
"   \   'keymap': {
"   \     "\<CR>": '<Over>(easymotion)'
"   \   },
"   \   'is_expr': 0
"   \ }), get(a:, 1, {}))
" endfunction
"
" noremap <silent><expr> /  incsearch#go(<SID>incsearch_config())
" noremap <silent><expr> ?  incsearch#go(<SID>incsearch_config({'command': '?'}))
" noremap <silent><expr> g/ incsearch#go(<SID>incsearch_config({'is_stay': 1}))
"
" " 模糊搜索
" function! s:config_easyfuzzymotion(...) abort
"   return extend(copy({
"   \   'converters': [incsearch#config#fuzzy#converter()],
"   \   'modules': [incsearch#config#easymotion#module()],
"   \   'keymap': {"\<CR>": '<Over>(easymotion)'},
"   \   'is_expr': 0,
"   \   'is_stay': 1
"   \ }), get(a:, 1, {}))
" endfunction
"
" noremap <silent><expr> <Leader>/ incsearch#go(<SID>config_easyfuzzymotion())

"""""""""""
" suda.vim
"""""""""""
nnoremap <Leader>s :SudaWrite<CR>
" let g:suda_smart_edit = 1

""""""""""""""""
" vim-signature
""""""""""""""""

let g:SignatureMap = {
      \ 'Leader'             :  "m",
      \ 'PlaceNextMark'      :  "",
      \ 'ToggleMarkAtLine'   :  "m<Leader>",
      \ 'PurgeMarksAtLine'   :  "",
      \ 'DeleteMark'         :  "",
      \ 'PurgeMarks'         :  "m<BS>",
      \ 'PurgeMarkers'       :  "",
      \ 'GotoNextLineAlpha'  :  "M>",
      \ 'GotoPrevLineAlpha'  :  "M<",
      \ 'GotoNextSpotAlpha'  :  "",
      \ 'GotoPrevSpotAlpha'  :  "",
      \ 'GotoNextLineByPos'  :  "m.",
      \ 'GotoPrevLineByPos'  :  "m,",
      \ 'GotoNextSpotByPos'  :  "",
      \ 'GotoPrevSpotByPos'  :  "",
      \ 'GotoNextMarker'     :  "",
      \ 'GotoPrevMarker'     :  "",
      \ 'GotoNextMarkerAny'  :  "",
      \ 'GotoPrevMarkerAny'  :  "",
      \ 'ListBufferMarks'    :  "m/",
      \ 'ListBufferMarkers'  :  ""
      \ }
let g:SignaturePrioritizeMarks = 0
