source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
source $VIMRUNTIME/../macros.vim
behave mswin
" ----------------------------------------------------------------------------------

" +++ Vundle Start
set nocompatible             " be iMproved, required
filetype off                 " required
 
set rtp+=c:/Vim/bundle/Vundle.vim/

call vundle#begin('c:/vim/bundle/')

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree' 
Plugin 'scrooloose/nerdcommenter'

" Не пробывал Plugin 'jonathanfilip/lucius'
" Не пробывал Plugin 'easymotion/vim-easymotion'

Plugin 'kabbamine/vcoolor.vim'
Plugin 'lilydjwg/colorizer'

Plugin 'kien/ctrlp.vim'
Plugin 'matze/vim-move'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'
Plugin 'townk/vim-autoclose'
Plugin 'godlygeek/tabular'

Plugin 'WolfgangMehner/perl-support'
Plugin 'pangloss/vim-javascript'
Plugin 'digitaltoad/vim-pug.git'
Plugin 'stanangeloff/php.vim'
Plugin 'wavded/vim-stylus'
Plugin 'evidens/vim-twig'
Plugin 'tpope/vim-haml'
Plugin 'mxw/vim-jsx'

Plugin 'heavenshell/vim-jsdoc'
Plugin 'PDV--phpDocumentor-for-Vim'
Plugin 'shawncplus/phpcomplete.vim'
"Plugin '2072/PHP-Indenting-for-VIm'

Plugin 'altercation/vim-colors-solarized'
Plugin 'flazz/vim-colorschemes'
Plugin 'cocopon/iceberg.vim'
Plugin 'chriskempson/tomorrow-theme'
Plugin 'endel/vim-github-colorscheme'
Plugin 'rakr/vim-one'

"Plugin 'tobys/pdv'
"Plugin 'honza/vim-snippets'
"Plugin 'sirver/ultisnips'

"Plugin 'thaerkh/vim-workspace'
"Plugin 'airblade/vim-rooter'
"Plugin 'vim-scripts/hexHighlight.vim'
"Plugin 'airblade/vim-gitgutter'
"Plugin 'dohsimpson/vim-macroeditor'
"Plugin 'taglist.vim'
"Plugin 'scrooloose/syntastic'
"Plugin 'valloric/youcompleteme'

call vundle#end()            " required
filetype plugin indent on    " required
" +++ Vundle End
" ----------------------------------------------------------------------------------
"
filetype plugin on


" ----------------------------------------------------------------------------------
" Tabular 
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a
function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction


" ----------------------------------------------------------------------------------
" PDV--phpDocumentor-for-Vim
"source c:/Vim/bundle/PDV--phpDocumentor-for-Vim/plugin/php-doc.vim
"inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
"nnoremap <C-P> :call PhpDocSingle()<CR>
"vnoremap <C-P> :call PhpDocRange()<CR>


" ----------------------------------------------------------------------------------
" Vim-JavaScript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
"set foldmethod=syntax


" ----------------------------------------------------------------------------------
" Vim-JsDoc
nmap <silent> <C-i> <Plug>(jsdoc)


" ---------------------------------------------------------------------------------------
" Vim-JSX
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
" ----------------------------------------------------------------------------------


" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
" ----------------------------------------------------------------------------------

" NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.lnk$', '\.git$', '\.swp$']
"autocmd vimenter * NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"let g:NERDTreeDirArrows = 1
"let g:NERDTreeDirArrowExpandable = '?'
"let g:NERDTreeDirArrowCollapsible = '?'
" ----------------------------------------------------------------------------------

" Работа с сессиями
"let g:session_autosave = 'yes'
"let g:session_default_to_last = 1
"let g:session_autoload = 'yes'

" ----------------------------------------------------------------------------------
" perl-support


" ----------------------------------------------------------------------------------
" vim-workspace
"nnoremap <leader>w :ToggleWorkspace<CR>
"let g:workspace_session_name = 'Session.vim'


" ----------------------------------------------------------------------------------
" User setting
inoremap jj <ESC>
let mapleader = ","
"cnoremap W w
"cnoremap Q q

map <ESC> :noh<CR>
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

map ,v :vsp $MYVIMRC<CR>
map ,V :source $MYVIMRC<CR>

" russian
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

" Размеры экрана при запуске
" set lines=9999
" set columns=9999

" Search options: incremental search, do clever case things, highlight
set incsearch
set ignorecase
set infercase
set hlsearch

set nocompatible " для совместимости

" set foldenable
" set foldmethod=syntax
" set foldcolumn=2
" set foldlevel=1

" Избавляемся от меню и тулбара:
"set guioptions-=m 
set guioptions-=T 



colorscheme one
set background=light
"set background=dark

"colorscheme github

"colorscheme tomorrow
"colorscheme tomorrow-night
"colorscheme tomorrow-night-eighties
"colorscheme tomorrow-night-blue
"colorscheme tomorrow-night-bright

"colorscheme wombat
"colorscheme molokai

" Тема color-solarized 
"colorscheme solarized
"set background=light
"set background=dark



syntax on " Влючить подстветку синтаксиса

set nu
set cursorline
set fileencodings=utf-8,ansi,cp1251
set iskeyword=@,a-z,A-Z,48-57,_,128-175,192-255
filetype plugin on
set omnifunc=syntaxcomplete#Complete

set wrap " попросим Vim переносить длинные строки
set showbreak=\ \ \ \ \ \ > " Если вам не хочется, чтобы перенесенные строки мешались с номерами строк.
"hi NonText guifg=#0030ff ctermfg=green
" Символ > будет зеленый


" set tab to 2 spaces
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set softtabstop=2


set autoindent " Включить автоотступы
set ai " включим автоотступы для новых строк
set cin " включим отступы в стиле Си

" Автоматическое переключение рабочей папки
"set autochdir

" Отключить создание файлов бекапа и свапа
set nobackup
set nowritebackup
set noswapfile
set autoread

" Шрифт и размер
set guifont=Consolas:h12:cRUSSIAN:qDRAFT
" ---------------------------------------------------------------------------------------

"set diffexpr=MyDiff()
"function MyDiff()
  "let opt = '-a --binary '
  "if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  "if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  "let arg1 = v:fname_in
  "if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  "let arg2 = v:fname_new
  "if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  "let arg3 = v:fname_out
  "if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  "if $VIMRUNTIME =~ ' '
    "if &sh =~ '\<cmd'
      "if empty(&shellxquote)
        "let l:shxq_sav = ''
        "set shellxquote&
      "endif
      "let cmd = '"' . $VIMRUNTIME . '\diff"'
    "else
      "let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    "endif
  "else
    "let cmd = $VIMRUNTIME . '\diff'
  "endif
  "silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  "if exists('l:shxq_sav')
    "let &shellxquote=l:shxq_sav
  "endif
"endfunction



" ----------------------------------------------------------------------------------
" PHP.VIM

function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END


" ----------------------------------------------------------------------------------
