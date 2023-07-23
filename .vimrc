set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'jacoborus/tender.vim'

call vundle#end()

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

map <Leader>f <Plug>(easymotion-bd-w)
map <Leader>F <Plug>(easymotion-bd-jk)

map <Leader>nt <ESC>:NERDTree<CR>
let NERDTreeShowHidden=1
" let NERDTreeQuitOnOpen=1
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|vendor$',
    \ 'file': '\v\.(exe|so|dll)$'
\ }
" Tag List 환경설정
filetype on                                 "vim filetype on
"Source Explorer 환경설정
nmap <F8> :SrcExplToggle<CR>                "F8 Key = SrcExpl Toggling
nmap <C-H> <C-W>h                           "왼쪽 창으로 이동
nmap <C-J> <C-W>j                           "아래 창으로 이동
map <C-K> <C-W>k                           "윗 창으로 이동
nmap <C-L> <C-W>l                           "오른쪽 창으로 이동

" 구문 강조 사용
if has("syntax")
 syntax on
endif

" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

"inoremap <silent><expr> <F1> coc#pum#visible() ? coc#pum#next(1) : CheckBackspace() ? "\<F1>" : coc#refresh()
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
nnoremap gf <C-W>gf

set encoding=utf-8         " encoding 설정
set fileencodings=utf-8,cp949,default,latin1
set termencoding=utf-8
set number                " 좌측 라인 넘버 표시
set numberwidth=6        " 넘버 표시 공간의 너비
set title                " 하단 편집 문서의 이름 표시
set ruler                " 하단부에 현재 커서의 위치를 표시
set shiftwidth=4        " 들여쓰기 간격
set tabstop=4            " tab 간격
set cindent
set autoindent            " 자동 들여쓰기
set smartindent
set hlsearch            " 검색 결과 강조
set incsearch            " 증가 방향으로 검색
set nowrapscan            " 검색 시 파일 끝에서 되돌려 검색하지 않게
set ignorecase            " 검색 시 대소문자 구분하지 않음
set nowrap                " 자동 줄 바꿈 사용하지 않음
set autoread
set showmatch            " 커서 위치 시 괄호의 끝 혹은 시작을 반전으로 표시
set laststatus=2        " 상태 라인 표시 위해(vim-airline 에서도 사용)
set cursorline        " 현재 커서가 있는 라인을 강조
set tagbsearch            " 태그 데이터 베이스를 이진으로 검색

colorscheme tender

