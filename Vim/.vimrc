" 文字コード
set encoding=utf-8
set fileencodings=utf-8,sjis,euc-jp,latin1

" 行番号表示
set number

" インデント設定
set tabstop=4       " タブ幅
set shiftwidth=4    " 自動インデント幅
set expandtab       " タブをスペースに変換
set autoindent      " 自動インデント
set smartindent     " スマートインデント

" 検索設定
set ignorecase      " 大文字小文字を区別しない
set smartcase       " 大文字が含まれる場合は区別する
set incsearch       " インクリメンタルサーチ
set hlsearch        " 検索結果をハイライト

" 表示設定
syntax on           " シンタックスハイライト
set showmatch       " 対応する括弧を表示
set cursorline      " カーソル行をハイライト
set laststatus=2    " ステータスラインを常に表示
set showcmd         " コマンドを表示
set wildmenu        " コマンドライン補完を強化

" エディタ設定
set backspace=indent,eol,start  " バックスペースの挙動
set clipboard=unnamed,unnamedplus  " システムクリップボード連携
set mouse=a         " マウス有効化
set noerrorbells    " エラー音を消す

" バックアップ・スワップファイル
set nobackup
set noswapfile
set nowritebackup
