call plug#begin()
"Plug 'FelikZ/ctrlp-py-matcher'
"Plug 'ludovicchabant/vim-gutentags'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'shawncplus/phpcomplete.vim'
Plug 'chriskempson/base16-vim'
Plug 'lambdalisue/vim-gita'
Plug 'tristen/vim-sparkup'
Plug 'jonathanfilip/vim-lucius'
Plug 'benekastah/neomake'
Plug 'Shougo/deoplete.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-grepper'
Plug 'romainl/Apprentice'
Plug 'NLKNguyen/papercolor-theme'
"Plug 'mhinz/vim-startify'
Plug 'chrisbra/NrrwRgn'
Plug 'kassio/neoterm'
Plug 'osyo-manga/vim-over'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'
Plug '1995eaton/vim-better-javascript-completion'
Plug 'AlxHnr/clear_colors'
Plug 'fhrach4/neo-jungle256'
Plug 'hail2u/h2u_colorscheme'
Plug 'dsolstad/vim-wombat256i'
Plug 'Lokaltog/vim-easymotion'
Plug 'Raimondi/delimitMate'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'ajh17/Spacegray.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'cocopon/iceberg.vim'
Plug 'cocopon/lightline-hybrid.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'd11wtq/ctrlp_bdelete.vim'
Plug 'dsolstad/vim-wombat256i'
Plug 'fisadev/vim-ctrlp-cmdpalette'
Plug 'freeo/vim-kalisi'
Plug 'godlygeek/tabular'
Plug 'groenewege/vim-less'
Plug 'honza/vim-snippets'
Plug 'inside/vim-search-pulse'
Plug 'itchyny/lightline.vim'
Plug 'jacquesbh/vim-showmarks'
Plug 'jasoncodes/ctrlp-modified.vim'
Plug 'jasoncodes/ctrlp-modified.vim'
Plug 'jeetsukumaran/vim-filebeagle'
Plug 'jnurmine/Zenburn'
Plug 'junegunn/vim-easy-align'
Plug 'majutsushi/tagbar'
Plug 'marcus/autotag.vim'
Plug 'mhinz/vim-signify'
Plug 'mileszs/ack.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'myusuf3/numbers.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'nice/sweater'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'pangloss/vim-javascript'
Plug 'popkirby/lightline-iceberg'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'sjl/gundo.vim'
Plug 'spf13/PIV'
Plug 'tacahiroy/ctrlp-funky'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'vim-scripts/bufkill.vim'
Plug 'vim-scripts/undotree.vim'
"Plug 'vim-scripts/vawa.vim'
Plug 'w0ng/vim-hybrid'
Plug 'wellle/targets.vim'
Plug 'deris/vim-shot-f'

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'Valloric/YouCompleteMe', { 'dir': '~/.nvim/plugged/YouCompleteMe', 'do': './install.sh' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'marijnh/tern_for_vim', { 'dir': '~/.nvim/plugged/tern_for_vim', 'do': 'npm install' }
call plug#end()

if has('nvim')
  runtime! plugin/python_setup.vim
endif

" indent-guides
"let g:indent_guides_guide_size = 1
"let g:indent_guides_color_change_percent = 50
"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
"let g:indent_guides_auto_colors = 0

let g:indentLine_color_term = 139
let g:indentLine_color_gui = '#A4E57E'
let g:indentLine_char = '┆'
let g:indentLine_bufNameExclude = ['_.*', 'NERD_tree.*']
let g:indentLine_fileTypeExclude = ['text', 'sh', 'txt']

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=234
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=236

set background=dark
colorscheme lucius

set noautochdir
syntax on                   " Syntax highlighting
set mouse=a                 " Automatically enable mouse usage
set mousehide               " Hide the mouse cursor while typing
scriptencoding utf-8

set tabpagemax=10
set showmode
set cursorline
set cursorcolumn

set history=1000
"set spell
set hidden

set backspace=indent,eol,start
set linespace=0
set nu
set showmatch
set incsearch
set nohlsearch
set winminheight=0
set ignorecase
set smartcase
set wildmenu
set wildmode=list:longest,full
set whichwrap=b,s,h,l,<,>,[,]
set scrolljump=5
set scrolloff=3
set nofoldenable
"set foldlevel=3
set foldmethod=syntax
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problem whitespace

set wrap
set autoindent
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4
set nojoinspaces
set splitright
set splitbelow
set pastetoggle=<f1>
set laststatus=2
set fo+=or                      " for PHP docblock comments
set clipboard+=unnamedplus

au CursorHold * checktime
au CursorHoldI * checktime
au WinEnter * checktime
au BufEnter * checktime
"au FocusGained * checktime

autocmd Filetype html setlocal ts=4 sts=4 sw=4
autocmd Filetype html.handlebars setlocal ts=4 sts=4 sw=4
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4 nospell
autocmd Filetype php setlocal ts=4 sts=4 sw=4 nospell nofoldenable fdm=syntax
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2

nnoremap <Leader>m :w <BAR> !lessc % > %:t:r.css<CR><space>

let g:vim_search_pulse_mode = 'pattern'
let g:vim_search_pulse_duration = 400

let g:zenburn_high_Contrast=1

nnoremap <F5> :GundoToggle<CR>

let g:ackprg = 'ag --nogroup --nocolor --column'

" NerdTree
map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>

let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0

" Tabularize
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a=> :Tabularize /=><CR>
vmap <Leader>a=> :Tabularize /=><CR>
nmap <Leader>a: :Tabularize /:<CR>
vmap <Leader>a: :Tabularize /:<CR>
nmap <Leader>a// :Tabularize ////<CR>
vmap <Leader>a// :Tabularize ////<CR>

" Tagbar
nnoremap <silent> <leader>tt :TagbarToggle<cr>

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [  'p:package', 'i:imports:1', 'c:constants', 'v:variables',
    \ 't:types',  'n:interfaces', 'w:fields', 'e:embedded', 'm:methods',
    \ 'r:constructor', 'f:functions' ],
    \ 'sro' : '.',
    \ 'kind2scope' : { 't' : 'ctype', 'n' : 'ntype' },
    \ 'scope2kind' : { 'ctype' : 't', 'ntype' : 'n' },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

" Fugitive
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gp :Git push<CR>
nnoremap <silent> <leader>gr :Gread<CR>:GitGutter<CR>
nnoremap <silent> <leader>gw :Gwrite<CR>:GitGutter<CR>
nnoremap <silent> <leader>ge :Gedit<CR>
nnoremap <silent> <leader>gg :GitGutterToggle<CR>


" lightline
let g:lightline = {
      \ 'colorscheme': 'Tomorrow',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ], 
      \             [ 'ctrlpmark' ],
      \   ],
      \   'right': [ [ 'syntastic', 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'filetype' ] ]
      \ },
      \ 'component': {
      \   'lineinfo': ' %3l:%-2v',
      \ },
      \ 'component_function': {
      \   'readonly': 'MyReadonly',
      \   'fugitive': 'MyFugitive',
      \   'mode': 'MyMode',
      \   'ctrlpmark': 'CtrlPMark',
      \ },
      \ 'component_expand': {
      \   'syntastic': 'SyntasticStatuslineFlag',
      \ },
      \ 'component_type': {
      \   'syntastic': 'error',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

function! MyReadonly()
    return &readonly ? '' : ''
endfunction

function! MyFugitive()
    if exists("*fugitive#head")
        let _ = fugitive#head()
        return strlen(_) ? ' '._ : ''
    endif
    return ''
endfunction

let g:syntastic_mode_map = { "mode": "passive",
    \ "active_filetypes": ["css", "php", "javascript", "less"],
    \ "passive_filetypes": ["python", "html", "html.handlebars"] }

let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_javascript_checkers = ["jshint"]

augroup AutoSyntastic
  autocmd!
  "autocmd BufWritePost *.php,*.js,*.css,*.html,*.py,*.rb call s:syntastic()
  autocmd BufWritePost *.js,*.hbs,*.php call s:syntastic()
augroup END

function! s:syntastic()
  SyntasticCheck
  call lightline#update()
endfunction

function! MyMode()
  let fname = expand('%:t')
  return fname == '__Tagbar__' ? 'Tagbar' :
        \ fname == 'ControlP' ? 'CtrlP' :
        \ fname == '__Gundo__' ? 'Gundo' :
        \ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
        \ fname =~ 'NERD_tree' ? 'NERDTree' :
        \ &ft == 'unite' ? 'Unite' :
        \ &ft == 'vimfiler' ? 'VimFiler' :
        \ &ft == 'vimshell' ? 'VimShell' :
        \ winwidth(0) > 60 ? lightline#mode() : ''
endfunction

function! CtrlPMark()
  if expand('%:t') =~ 'ControlP'
    call lightline#link('iR'[g:lightline.ctrlp_regex])
    return lightline#concatenate([g:lightline.ctrlp_prev, g:lightline.ctrlp_item
          \ , g:lightline.ctrlp_next], 0)
  else
    return ''
  endif
endfunction

let g:ctrlp_status_func = {
  \ 'main': 'CtrlPStatusFunc_1',
  \ 'prog': 'CtrlPStatusFunc_2',
  \ }

function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
  let g:lightline.ctrlp_regex = a:regex
  let g:lightline.ctrlp_prev = a:prev
  let g:lightline.ctrlp_item = a:item
  let g:lightline.ctrlp_next = a:next
  return lightline#statusline(0)
endfunction

function! CtrlPStatusFunc_2(str)
  return lightline#statusline(0)
endfunction

let g:tagbar_status_func = 'TagbarStatusFunc'

function! TagbarStatusFunc(current, sort, fname, ...) abort
    let g:lightline.fname = a:fname
  return lightline#statusline(0)
endfunction

let g:lightline.mode_map = {
    \ 'n' : 'N',
    \ 'i' : 'I',
    \ 'R' : 'R',
    \ 'v' : 'V',
    \ 'V' : 'V-LINE',
    \ 'c' : 'COMMAND',
    \ "\<C-v>": 'V-BLOCK',
    \ 's' : 'SELECT',
    \ 'S' : 'S-LINE',
    \ "\<C-s>": 'S-BLOCK',
    \ '?': '      ' }

augroup LightLineColorscheme
  autocmd!
  autocmd ColorScheme * call s:lightline_update()
augroup END

function! s:lightline_update()
  if !exists('g:loaded_lightline')
    return
  endif
  try
    if g:colors_name =~# 'wombat\|solarized\|landscape\|jellybeans\|Tomorrow'
      let g:lightline.colorscheme = substitute(substitute(g:colors_name, '-', '_', 'g'), '256.*', '', '') .
            \ (g:colors_name ==# 'solarized' ? '_' . &background : '')
      call lightline#init()
      call lightline#colorscheme()
      call lightline#update()
    endif
  catch
  endtry
endfunction

" vim-gitgutter
" https://github.com/airblade/vim-gitgutter/issues/106
let g:gitgutter_realtime = 0

" UndoTree
nnoremap <Leader>u :UndotreeToggle<CR>
let g:undotree_SetFocusWhenToggle=1

" OmniComplete
"if has("autocmd") && exists("+omnifunc")
"    autocmd Filetype *
"        \if &omnifunc == "" |
"        \setlocal omnifunc=syntaxcomplete#Complete |
"        \endif
"endif

hi Pmenu  guifg=#000000 guibg=#F8F8F8 ctermfg=black ctermbg=Lightgray
hi PmenuSbar  guifg=#8A95A7 guibg=#F8F8F8 gui=NONE ctermfg=darkcyan ctermbg=lightgray cterm=NONE
hi PmenuThumb  guifg=#F8F8F8 guibg=#8A95A7 gui=NONE ctermfg=lightgray ctermbg=darkcyan cterm=NONE

" Automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menu,preview,longest

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" neosnippet key-mappings.
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" neosnippet SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" call ctags using CtrlP
nnoremap <leader>. :CtrlPTag<cr>
nnoremap <leader>p :CtrlPCmdPalette<cr>

nnoremap <silent> <F9> :TagbarToggle<CR>

let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

" indent-guides
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 50
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=234
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=236

" js completion
let g:vimjs#smartcomplete = 1

au BufNewFile,BufRead *.less set filetype=less
autocmd BufRead,BufNewFile *.blade.php set filetype=html

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/**

let g:ctrlp_custom_ignore = {
            \ 'dir': '\v[\/]\.(git|hg|svn)$',
            \}

let g:ctrlp_max_files = 0

let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore "*/vendor/**"
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'

" PyMatcher for CtrlP
"if !has('python')
"    echo 'In order to use pymatcher plugin, you need +python compiled vim'
"else
"    let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
"endif

set shell=zsh

"set colorcolumn=80
"highlight ColorColumn ctermbg=darkgray

" for transparent background
hi Normal ctermbg=NONE

let g:hybrid_use_Xresources = 1

let g:tern_map_keys = 1
let g:ycm_add_preview_to_completeopti = 0
let g:ycm_confirm_extra_conf = 0
set completeopt-=preview

call ctrlp_bdelete#init()
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:50,results:50'

" Choose a color scheme with fzf
nnoremap <silent> <Leader>C :call fzf#run({
\   'source':
\     map(split(globpath(&rtp, "colors/*.vim"), "\n"),
\         "substitute(fnamemodify(v:val, ':t'), '\\..\\{-}$', '', '')"),
\   'sink':     'colo',
\   'options':  '+m',
\   'left':     20,
\   'launcher': 'xterm -geometry 20x30 -e bash -ic %s'
\ })<CR>

" List of buffers
function! s:buflist()
  redir => ls
  silent ls
  redir END
  return split(ls, '\n')
endfunction

function! s:bufopen(e)
  execute 'buffer' matchstr(a:e, '^[ 0-9]*')
endfunction

nnoremap <silent> <Leader><Enter> :call fzf#run({
\   'source':  reverse(<sid>buflist()),
\   'sink':    function('<sid>bufopen'),
\   'options': '+m',
\   'down':    len(<sid>buflist()) + 2
\ })<CR>


nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>)

map <Leader>m :CtrlPModified<CR>
map <Leader>M :CtrlPBranch<CR>

hi Normal ctermbg=NONE

tnoremap <Esc> <C-\><C-n>

let g:neoterm_clear_cmd = "clear; printf '=%.0s' {1..80}; clear"
let g:neoterm_position = 'vertical'
let g:neoterm_automap_keys = ',tt'

nnoremap <silent> <f9> :call neoterm#repl#line()<cr>
vnoremap <silent> <f9> :call neoterm#repl#selection()<cr>

" run set test lib
nnoremap <silent> ,rt :call neoterm#test#run('all')<cr>
nnoremap <silent> ,rf :call neoterm#test#run('file')<cr>
nnoremap <silent> ,rn :call neoterm#test#run('current')<cr>
nnoremap <silent> ,rr :call neoterm#test#rerun()<cr>

" Useful maps
" closes the all terminal buffers
nnoremap <silent> ,tc :call neoterm#close_all()<cr>
" clear terminal
nnoremap <silent> ,tl :call neoterm#clear()<cr>

augroup terminal
  autocmd TermOpen * setlocal nospell
augroup END

let g:enable_numbers = 0
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>
set number!

nnoremap <F7> :IndentLinesToggle<CR>

nnoremap <c-f> :FZF<CR>
nnoremap <F1> :FZF<CR>

"set g:DisableAutoPHPFolding = 1
set grepprg=ag\ --vimgrep
nnoremap <Leader>vv :vimgrep <cword> ./**/* <CR>:cw<CR>

autocmd BufNewFile,BufRead *.json set ft=javascript

nmap gs <plug>Grepper
vmap gs <plug>Grepper

" Use deoplete.
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

autocmd! BufWritePost * Neomake

let g:lucius_no_term_bg = 1

nnoremap <expr> <s-cr> foldclosed(line('.')) == -1 ? "\<cr>" : "zA"
nnoremap <expr> <cr>   foldlevel(line('.'))  ? "za" : "\<cr>"

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
