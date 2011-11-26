" 検索した語を中心にする
nmap n nzz 
nmap N Nzz 
nmap * *zz 
nmap # #zz 
nmap g* g*zz 
nmap g# g#zz
" 表示行単位で移動
nnoremap j gj
nnoremap k gk
"インクリメンタルサーチしない
set nois
"Ctrl+N(P)でバッファの切り替え  
map <C-N>  :tabnext<CR>
map <C-P>  :tabprevious<CR>
"編集中のバッファの切り替えを可能にする
set hid

set foldmethod=syntax
set foldlevel=0

"<TAB>で補完
" {{{ Autocompletion using the TAB key
" This function determines, wether we are on the start of the line text (then tab indents) or
" if we want to try autocompletion
"function! InsertTabWrapper()
"        let col = col('.') - 1
"        if !col || getline('.')[col - 1] !~ '\k'
"                return "\<TAB>"
"        else
"                if pumvisible()
"                        return "\<C-N>"
"                else
"                        return "\<C-N>\<C-P>"
"                end
"        endif
"endfunction
" Remap the tab key to select action with InsertTabWrapper
"inoremap <tab> <c-r>=InsertTabWrapper()<cr>
" }}} Autocompletion using the TAB key
        

"vim7から使えるオムニ補完用設定
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Compelte
autocmd FileType html set filetype=xhtml
autocmd FileType xhtml set omnifunc=htmlcomplete#CompleteTags
"menuでキーを押すとディレクトリを上れる
set wildmenu
"検索時大文字小文字を区別しない
set ignorecase
"検索時大文字小文字の両方が入ってれば区別
set smartcase
"タブをスペースに展開する（Pythonのみ
autocmd FileType python set expandtab
"自動インデント
"set autoindent "普通の自動インデント
set smartindent "カッコとかで次下げ
"backspaceで改行とか削除
set backspace=2
"括弧入力時に対応する括弧を表示
set showmatch
"テキスト挿入中の自動折り返しを日本語に対応させる
set formatoptions+=mM
"見た目の設定
syntax on
"colorscheme morning
"colorscheme darkblue
"colorscheme evening
"行番号の表示設定
set nu
set ambiwidth=double

""tab setting
set ts=2
set sw=2
set tw=0

set nolist
set nobackup
"backupfile make dir
"set backupdir=~/temp
"swp file make dir
"set directory=~/temp
"ステータスバーを常に表示。表示内容
set laststatus=2
"set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
"backupfile make dir
"set backupdir=C:\home\temp
"swp file make dir実行時の安全用一時ファイル
"set directory=C:\home

"バッファタブにパスを省略してファイル名のみ表示する(buftabs.vim)
let g:buftabs_only_basename=1
"バッファタブをステータスライン内に表示する
let g:buftabs_in_statusline=1

au FileType javascript set ts=2 sw=2 expandtab
au BufNewFile *.js set ft=javascript fenc=utf-8
filetype plugin indent on
