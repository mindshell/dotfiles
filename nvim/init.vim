call plug#begin('~/.nvim/plugged')

Plug 'mbbill/undotree'
Plug 'PeterRincker/vim-argumentative'
Plug 'craigemery/vim-autotag'
Plug 'othree/html5.vim'
Plug 'tpope/vim-scriptease'
Plug 'matze/vim-move'
Plug 'ggVGc/vim-fuzzysearch'
Plug 'junegunn/tmux-complete.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'junegunn/vim-pseudocl'
Plug 'junegunn/vim-fnr'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'bkad/CamelCaseMotion'
Plug 'shawncplus/phpcomplete.vim'
Plug 'lambdalisue/vim-gita'
Plug 'benekastah/neomake'
Plug 'Shougo/deoplete.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-grepper'
Plug 'chrisbra/NrrwRgn'
Plug 'kassio/neoterm'
Plug 'osyo-manga/vim-over'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'
Plug '1995eaton/vim-better-javascript-completion'
Plug 'Lokaltog/vim-easymotion'
Plug 'Raimondi/delimitMate'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'd11wtq/ctrlp_bdelete.vim'
Plug 'fisadev/vim-ctrlp-cmdpalette'
Plug 'freeo/vim-kalisi'
Plug 'godlygeek/tabular'
Plug 'groenewege/vim-less'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'inside/vim-search-pulse'
Plug 'itchyny/lightline.vim'
Plug 'jacquesbh/vim-showmarks'
Plug 'jasoncodes/ctrlp-modified.vim'
Plug 'jeetsukumaran/vim-filebeagle'
Plug 'junegunn/vim-easy-align'
Plug 'majutsushi/tagbar'
Plug 'marcus/autotag.vim'
Plug 'mhinz/vim-signify'
Plug 'mileszs/ack.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'myusuf3/numbers.vim'
Plug 'othree/javascript-libraries-syntax.vim'
let g:used_javascript_libs = 'jquery'
Plug 'jelera/vim-javascript-syntax'
Plug 'othree/yajs.vim'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'simnalamburt/vim-mundo'
Plug 'spf13/PIV'
Plug 'tacahiroy/ctrlp-funky'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/bufkill.vim'
Plug 'vim-scripts/undotree.vim'
Plug 'wellle/targets.vim'
Plug 'deris/vim-shot-f'
Plug 'idanarye/vim-merginal'
" {{{
  nnoremap <leader>gm :MerginalToggle<CR>
" }}}

" colorschemes
Plug 'mswift42/vim-themes'
Plug 'AlessandroYorba/Alduin'
Plug 'andreasvc/vim-256noir'
Plug 'ajh17/Spacegray.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'cocopon/iceberg.vim'
Plug 'cocopon/lightline-hybrid.vim'
Plug 'w0ng/vim-hybrid'
Plug 'AlxHnr/clear_colors'
Plug 'romainl/Apprentice'
Plug 'NLKNguyen/papercolor-theme'
Plug 'jonathanfilip/vim-lucius'
Plug '29decibel/codeschool-vim-theme'
Plug 'fhrach4/neo-jungle256'
Plug 'hail2u/h2u_colorscheme'
Plug 'dsolstad/vim-wombat256i'
Plug 'chriskempson/base16-vim'
Plug 'nanotech/jellybeans.vim'
Plug 'nice/sweater'
Plug 'jnurmine/Zenburn'
Plug 'vim-scripts/twilight'
Plug 'vim-scripts/pyte'
Plug 'popkirby/lightline-iceberg'

" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'Valloric/YouCompleteMe', { 'dir': '~/.nvim/plugged/YouCompleteMe', 'do': './install.sh' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'junegunn/fzf.vim'
Plug 'marijnh/tern_for_vim', { 'dir': '~/.nvim/plugged/tern_for_vim', 'do': 'npm install' }
call plug#end()

if has('nvim')
  runtime! plugin/python_setup.vim
endif

if strftime("%H") < 16
  set background=dark
  colorscheme base16-ashes
else
  set background=dark
  colorscheme base16-embers
endif

" indent-guides
"let g:indent_guides_guide_size = 1
"let g:indent_guides_color_change_percent = 50
"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
"let g:indent_guides_auto_colors = 0

let g:indentLine_color_term = 234
let g:indentLine_color_gui = '#d1f2be'
let g:indentLine_char = '┆'
let g:indentLine_bufNameExclude = ['_.*', 'NERD_tree.*']
let g:indentLine_fileTypeExclude = ['text', 'sh', 'txt']

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=234
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=236

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
set pastetoggle=<f3>
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


let g:ackprg = 'ag --nogroup --nocolor --column'

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

"let g:syntastic_mode_map = { "mode": "passive",
"    \ "active_filetypes": ["css", "php", "javascript", "less"],
"    \ "passive_filetypes": ["python", "html", "html.handlebars"] }
"
"let g:syntastic_check_on_open=1
"let g:syntastic_enable_signs=1
"let g:syntastic_javascript_checkers = ["jshint"]

"augroup AutoSyntastic
"  autocmd!
"  "autocmd BufWritePost *.php,*.js,*.css,*.html,*.py,*.rb call s:syntastic()
"  autocmd BufWritePost *.js,*.hbs,*.php call s:syntastic()
"augroup END

"function! s:syntastic()
"  SyntasticCheck
"  call lightline#update()
"endfunction

function! MyMode()
  let fname = expand('%:t')
  return fname == '__Tagbar__' ? 'Tagbar' :
        \ fname == 'ControlP' ? 'CtrlP' :
        \ fname == '__Mundo__' ? 'Mundo' :
        \ fname == '__Mundo_Preview__' ? 'Mundo Preview' :
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
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType javascript setlocal omnifunc=tern#Complete
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" call ctags using CtrlP
nnoremap <leader>. :CtrlPTag<cr>
nnoremap <leader>p :CtrlPCmdPalette<cr>

nnoremap <silent> <F9> :TagbarToggle<CR>

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

" Default fzf layout
let g:fzf_layout = { 'down': '50%' }

" Advanced customization using autoload functions
autocmd VimEnter * command! Colors
    \ call fzf#vim#colors({'down': '30%', 'options': '--color fg:188,bg:233,hl:103,fg+:222,bg+:234,hl+:104,info:183,prompt:110,spinner:107,pointer:167,marker:215'})


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
"nnoremap <F3> :NumbersToggle<CR>
"nnoremap <F4> :NumbersOnOff<CR>
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
let g:deoplete#auto_completion_start_length = 3
let g:deoplete#delimiters = ['/', '.', '::', ':', '#', '->']
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> deoplete#mappings#smart_close_popup()."\<C-h>"
inoremap <expr><BS>  deoplete#mappings#smart_close_popup()."\<C-h>"
let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.html = '<[^>]*'
let g:deoplete#omni_patterns.xml  = '<[^>]*'
let g:deoplete#omni_patterns.css   = '^\s\+\w\+\|\w\+[):;]\?\s\+\w*\|[@!]'
let g:deoplete#omni_patterns.scss   = '^\s\+\w\+\|\w\+[):;]\?\s\+\w*\|[@!]'
let g:deoplete#omni_patterns.sass   = '^\s\+\w\+\|\w\+[):;]\?\s\+\w*\|[@!]'
let g:deoplete#omni_patterns.javascript = '[^. \t]\.\%(\h\w*\)\?'
autocmd CmdwinEnter * let b:deoplete_sources = ['buffer']
set completeopt-=preview

" <CR>: close popup and save indent.
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
"  return deoplete#mappings#close_popup() . "\<CR>"
"endfunction

" Neomake
" ---------------------------------------------------------------------
" Better highlighting for signs
let g:neomake_error_sign = {
            \ 'text': '',
            \ 'texthl': 'ErrorMsg',
            \ }

let g:neomake_warning_sign = {
            \ 'text': '>>',
            \ 'texthl': 'WarningMsg',
            \ }
highlight ErrorMsg ctermfg=red
let g:neomake_list_height = 5
" run neomake on the current file on every write
autocmd! BufWritePost * Neomake
let g:neomake_javascript_jshint_maker = {
    \ 'args': ['--verbose'],
    \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
    \ }
let g:neomake_javascript_enabled_makers = ['jshint']

let g:lucius_no_term_bg = 1

nnoremap <expr> <s-cr> foldclosed(line('.')) == -1 ? "\<cr>" : "zA"
nnoremap <expr> <cr>   foldlevel(line('.'))  ? "za" : "\<cr>"

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
" Enable true color in text interfaces
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set tags=./tags;,tags;,./.git/tags;


" visor style terminal buffer
let s:termbuf = 0
function! ToggleTerm()
    botright 15 split
    try
        exe 'buffer' . s:termbuf
        startinsert
    catch
        terminal
        let s:termbuf=bufnr('%')
        tnoremap <buffer> <A-t>  <C-\><C-n>:close<cr>
    endtry
 endfunction

com! ToggleTerm call ToggleTerm()
nnoremap <A-t> :ToggleTerm<cr>

" Default peekaboo window
let g:peekaboo_window = 'botright 30new'
" Delay opening of peekaboo window (in ms. default: 0)
let g:peekaboo_delay = 400
" Compact display; do not display the names of the register groups
let g:peekaboo_compact = 0

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

let g:tmuxcomplete#trigger = 'omnifunc'

let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'undo']


" NerdTree
noremap <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
noremap <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>

" ----------------------------------------------------------------------------
" BTags
" ----------------------------------------------------------------------------
function! s:align_lists(lists)
  let maxes = {}
  for list in a:lists
    let i = 0
    while i < len(list)
      let maxes[i] = max([get(maxes, i, 0), len(list[i])])
      let i += 1
    endwhile
  endfor
  for list in a:lists
    call map(list, "printf('%-'.maxes[v:key].'s', v:val)")
  endfor
  return a:lists
endfunction

function! s:btags_source()
  let lines = map(split(system(printf(
    \ 'ctags -f - --sort=no --fields=nKs --excmd=pattern --language-force=%s %s',
    \ &filetype, expand('%:S'))), "\n"), 'split(v:val, "\t")')
  if v:shell_error
    throw 'failed to extract tags'
  endif
  return map(s:align_lists(lines), 'join(v:val, "\t")')
endfunction

function! s:btags_sink(line)
  let lines = split(a:line, "\t")
  for line in lines
      let arr = split(line, ":")
      if arr[0] == "line"
          exec arr[-1]
      endif
  endfor
  sil! norm! zvzz
endfunction

function! s:btags()
  try
    call fzf#run({'source':  s:btags_source(),
                 \'down':    '50%',
                 \'options': '+m -d "\t" --with-nth 4,1',
                 \'sink':    function('s:btags_sink')})
  catch
    echohl WarningMsg
    echom v:exception
    echohl None
  endtry
endfunction

command! BTags call s:btags()


" ftags - search ctags
"ftags() {
"  local line
"  [ -e tags ] &&
"  line=$(
"    awk 'BEGIN { FS="\t" } !/^!/ {print toupper($4)"\t"$1"\t"$2"\t"$3}' tags |
"    cut -c1-80 | fzf --nth=1,2
"  ) && $EDITOR $(cut -f3 <<< "$line") -c "set nocst" \
"                                      -c "silent tag $(cut -f2 <<< "$line")"
"}



function! s:tags_sink(line)
  let parts = split(a:line, '\t\zs')
  let excmd = matchstr(parts[2:], '^.*\ze;"\t')
  execute 'silent e' parts[1][:-2]
  let [magic, &magic] = [&magic, 0]
  execute excmd
  let &magic = magic
endfunction

function! s:tags()
  if empty(tagfiles())
    echohl WarningMsg
    echom 'Preparing tags'
    echohl None
    call system('ctags -R')
  endif

  call fzf#run({
  \ 'source':  'cat '.join(map(tagfiles(), 'fnamemodify(v:val, ":S")')).
  \            '| grep -v ^!',
  \ 'options': '+m -d "\t" --with-nth 1,4.. -n 1 --tiebreak=index',
  \ 'down':    '40%',
  \ 'sink':    function('s:tags_sink')})
endfunction

command! Tags call s:tags()


command! FZFMru call fzf#run({
\  'source':  v:oldfiles,
\  'sink':    'e',
\  'options': '-m -x +s',
\  'down':    '40%'})


function! s:ag_to_qf(line)
  let parts = split(a:line, ':')
  return {'filename': parts[0], 'lnum': parts[1], 'col': parts[2],
        \ 'text': join(parts[3:], ':')}
endfunction

function! s:ag_handler(lines)
  if len(a:lines) < 2 | return | endif

  let cmd = get({'ctrl-x': 'split',
               \ 'ctrl-v': 'vertical split',
               \ 'ctrl-t': 'tabe'}, a:lines[0], 'e')
  let list = map(a:lines[1:], 's:ag_to_qf(v:val)')

  let first = list[0]
  execute cmd escape(first.filename, ' %#\')
  execute first.lnum
  execute 'normal!' first.col.'|zz'

  if len(list) > 1
    call setqflist(list)
    copen
    wincmd p
  endif
endfunction

command! -nargs=* Ag call fzf#run({
\ 'source':  printf('ag --nogroup --column --color "%s"',
\                   escape(empty(<q-args>) ? '^(?=.)' : <q-args>, '"\')),
\ 'sink*':    function('<sid>ag_handler'),
\ 'options': '--ansi --expect=ctrl-t,ctrl-v,ctrl-x --delimiter : --nth 4.. '.
\            '--multi --bind ctrl-a:select-all,ctrl-d:deselect-all '.
"\            '--color hl:68,hl+:110',
\            '--color fg:188,bg:233,hl:103,fg+:222,bg+:234,hl+:104,info:183,prompt:110,spinner:107,pointer:167,marker:215',
\ 'down':    '70%'
\ })

nnoremap <f9> :tabe %:p:h<cr>
nnoremap <leader>ag :Ag <C-R>=expand("<cword>")<CR><CR>

set lazyredraw     " speed up on large files
set foldmethod=manual       " use manual folding
" Various columns
highlight! SignColumn ctermbg=233 guibg=#0D0D0D
highlight! FoldColumn ctermbg=233 guibg=#0D0D0D

" Toggle quickfix
map <silent> <F8> :copen<CR>
nnoremap <leader><F1> :execute 'terminal ranger ' . expand('%:p:h')<CR>
" Cursor configuration {{{
" ====================================================================
" Use a blinking upright bar cursor in Insert mode, a solid block in normal
" and a blinking underline in replace mode
  let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
  let &t_SI = "\<Esc>[5 q"
  let &t_SR = "\<Esc>[3 q"
  let &t_EI = "\<Esc>[2 q"
  " }}}

let g:tern_map_keys=1
let g:tern_show_argument_hints='on_hold'

imap <c-x><c-l> <plug>(fzf-complete-line)

function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command! ProjectFiles execute 'Files' s:find_git_root()

" Enable persistent undo so that undo history persists across vim sessions
set undofile
set undodir=~/.config/nvim/undo
"maximum number of changes that can be undone
set undolevels=1000000
"maximum number lines to save for undo on a buffer reload
set undoreload=10000000

set swapfile
set dir=~/.config/nvim/swap

" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

nmap <leader>c :ene<CR>:bw #<CR>

nnoremap <F5> :MundoToggle<CR>
nnoremap <F6> :UndotreeToggle<cr>

function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()

nmap <silent> <leader>h :History<CR>
