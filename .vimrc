:set number
:set ls=2
:filetype plugin on
:set tabstop=4
:set expandtab
:set softtabstop=4
:set shiftwidth=4 smarttab
:setlocal foldmethod=indent
:set t_Co=256
:set nowrap
:set clipboard=unnamed
:set clipboard=unnamedplus
:set autoindent
:set cindent
:set si
:set encoding=utf-8
:syntax enable
:set showmatch
:set hlsearch
:set ignorecase
:set noswapfile
:set mouse=a
:set autochdir
:set wrap
:set cmdheight=2
:set scrolloff=5

" auto complete for ( , " , ' , [ , {
:inoremap        (  ()<Left>
:inoremap        "  ""<Left>
:inoremap        `  ``<Left>
:inoremap        '  ''<Left>
:inoremap        [  []<Left>
:inoremap      {  {}<Left>

" Copy selected text to system clipboard (requires xclip installed):
:vnoremap <C-c> "cy<esc>:!echo -n '<C-R>c' \|<space>pbcopy<CR><enter>

:let mapleader="\<space>"
:set ttyfast
:noremap <silent> #3 :bp<CR> " switch to pervious tab with F3
:noremap <silent> #4 :bn<CR> " switch to next tab with F4
:map <F8> :setlocal spell! spelllang=en_us<CR> " check spelling with F8
:set pastetoggle=<F2>

" ###########################################################


:set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Wal
Plugin 'dylanaraps/wal.vim'

" Emmet
Plugin 'mattn/emmet-vim'

" Dart
Plugin 'dart-lang/dart-vim-plugin'

" Statify
Plugin 'mhinz/vim-startify'

" Whitespace highlighting
Plugin 'ntpeters/vim-better-whitespace'

" EasyMotion
Plugin 'easymotion/vim-easymotion'

" ALE
Plugin 'w0rp/ale'

" Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" DevIocn
Plugin 'ryanoasis/vim-devicons'

" WorkSpace
Plugin 'bagrat/vim-workspace'

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" NerdCommenter
Plugin 'scrooloose/nerdcommenter'

" Fugitive setup
Plugin 'tpope/vim-fugitive'

" Tagbar
Plugin 'majutsushi/tagbar'

" Buffet"
Plugin 'bagrat/vim-buffet'

" NerdTree setup
Plugin 'scrooloose/nerdtree'

" NERDTreeHighlight
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

" Python mode setup
Plugin 'klen/python-mode'

" Jedi-vim setup
Plugin 'davidhalter/jedi-vim'

" vim-virtualenv
Plugin 'jmcantrell/vim-virtualenv'

" Syntax check plugin
Plugin 'scrooloose/syntastic'

" C language
Plugin 'c.vim'

" JavaScript language
Plugin 'pangloss/vim-javascript'

" Gitgutter
Plugin 'airblade/vim-gitgutter'

" HTML5 support in VIM
Plugin 'othree/html5.vim'

" JSON support
Plugin 'elzr/vim-json'

" CSS3 support
Plugin 'hail2u/vim-css3-syntax'

" RUST support
Plugin 'rust-lang/rust.vim'

" NODE.js support
Plugin 'moll/vim-node'

" PHP support
Plugin 'stanangeloff/php.vim'

" JQUERY support
Plugin 'nono/jquery.vim'

" ANGULAR support
Plugin 'burnettk/vim-angular'

" INI files syntax support
Plugin 'nvie/vim-ini'

" JINJA template language support
Plugin 'hiphish/jinja.vim'

" HashiCorp plugins:
" vim-consul
" vim-nomadproject
" vim-ottoproject
" vim-packer
" vim-terraform
" vim-vagrant
" vim-vaultproject
Plugin 'hashivim/vim-hashicorp-tools'

" Typescript
Plugin 'Quramy/tsuquyomi'

" NumberToggle
Plugin 'jeffkreeftmeijer/vim-numbertoggle'

" Haxe
Plugin 'jdonaldson/vaxe'

" Soround
Plugin 'tpope/vim-surround'

" Repeat
Plugin 'tpope/vim-repeat'

" CTRLp
Plugin 'ctrlpvim/ctrlp.vim'

" polyglot
Plugin 'sheerun/vim-polyglot'

Plugin 'Shougo/vimproc'
Plugin 'Shougo/unite.vim'

" Deoplete Python
Plugin 'zchee/deoplete-jedi'

" Lisp support
Plugin 'l04m33/vlime'

call vundle#end()            " required
filetype plugin indent on    " required

" ###############################__OPTIONS__###############################

augroup vimec_autocmds
	autocmd!
	autocmd FileType python highlight Excess ctermbg=DarkGray guibg=Black
	autocmd FileType python match Excess /\%120v.*/
	autocmd FileType python set nowrap
augroup END

" gitgutter options
let g:gitgutter_enabled = 1
let g:gitgutter_signs = 1
let g:gitgutter_highlight_lines = 0
:map <F6> :GitGutterLineHighlightsToggle<CR> " Toggle gitgutter highlight

" Dart options
let dart_format_on_save = 1
let dart_style_guide = 2
let dart_html_in_string=v:true

" Startify options
let g:startify_lists = [
        \ {    'type': 'bookmarks', 'header': ['    Bookmarks']        },
        \ {    'type': 'files',     'header': ['    MRU']              },
        \ {    'type': 'dir',       'header': ['    MRU'. getcwd()]    },
        \ {    'type': 'sessions',  'header': ['    Sessions']         },
        \ {    'type': 'commands',  'header': ['    Commands']         },
        \ ]
let g:startify_bookmarks = [
        \ '~/.vimrc',
        \ '~/.config/nvim/init.vim',
        \ '~/.zshrc',
        \ '~/.bashrc',
        \ '~/.tmux.conf',
        \ '~/.tmux-powerlinerc',
        \ '~/.tmux/plugin/tmux-powerline/themes/default.sh',
        \ '~/.config/polybar/config',
        \ '~/.config/mutt/muttrc',
        \ '~/.config/ranger/rc.conf',
        \ '~/.config/i3/config',
        \ '~/Workspace/PHP/lara-shop/',
        \ '~/Workspace/Python/Current/Dev/',
        \ '~/Workspace/Python/Current/devdiaries/',
        \ '~/Workspace/NodeJS/app/',
        \ '~/Workspace/NodeJS/nuclear/',
        \ '~/Workspace/Python/own/new_up/',
        \ '~/Workspace/Python/VoTask/',
        \ '~/Workspace/Python/BuySys/',
        \ ]
let NERDTreeHijackNetrw = 1
let g:startify_fortune_use_unicode = 1

" EasyMotion options
let g:EasyMotion_smartcase = 1

" Airline options
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1
" let g:airline_theme='simple'
let g:airline_theme = 'violet'
" Always show statusline
set laststatus=2

" DevIocn options
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_ctrlp = 1
let g:webdevicons_enable_startify = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderPatternMatching = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:airline_powerline_fonts = 1
let g:WebDevIconsOS = 'Linux'
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

" vim-buffet options
let g:buffet_use_devicons = 1
let g:buffet_new_buffer_name = "\uf41e"
let g:buffet_modified_icon = ""
let g:buffet_powerline_separators = 1
let g:buffet_separator = " "
let g:buffet_subseparator = "|"
let g:buffet_tab_icon = "\uf00a"
let g:buffet_left_trunc_icon = "\uf0a8"
let g:buffet_right_trunc_icon = "\uf0a9"
noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>
noremap <Leader><Tab> :Bw<CR>
noremap <Leader><S-Tab> :Bw!<CR>
noremap <C-t> :tabnew<CR>
cabbrev bonly BufOnly

" vim-typescript options
let g:typescript_indent_disable = 1

" suppress the annoying 'match x of y', 'The only match' and 'Pattern not
" found' messages
set shortmess+=c
" When the <Enter> key is pressed while the popup menu is visible, it only
" hides the menu. Use this mapping to close the menu and also start a new
" line.
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
Plugin 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
" Plugin 'kristijanhusak/deoplete-phpactor'
" autocmd FileType php setlocal omnifunc=phpactor#Complete
set completeopt=noinsert,menuone,noselect
Plugin 'mhartington/nvim-typescript'
Plugin 'SirVer/ultisnips'

" ALE options
let g:ale_completion_enabled = 1
let g:airline#extensions#ale#enabled = 1

" NerdCommenter options
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" tagbar options
nmap <F5> :TagbarToggle<CR>

" nerdtree options"
:map <F9> :NERDTreeToggle<CR> " toggle showing NERDTree
" open a NERDTree automatically when vim starts up if no files were specified
:autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " close vim if the only window left open is a NERDTree

" NERDTree highlight
let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1
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
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'
let g:NERDTreeLimitedSyntax = 1

" Python-mode options
let g:pymode_rope = 0
" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
" Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1
" Support virtualenv
let g:pymode_virtualenv = 0
" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'
" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
let g:pymode_python = 'python3'
" Don't autofold code
let g:pymode_folding = 0

" Other setttings
" Use <leader>l to toggle display of whitespace
nmap <leader>l :set list!<CR>
" automatically change window's cwd to file's dir
set autochdir
" more subtle popup colors
if has ('gui_running')
	highlight Pmenu guibg=#cccccc gui=bold
endif


" Ctags auto append to tags file
autocmd BufWritePost *
      \ if filereadable('tags') |
      \   call system('ctags -a '.expand('%')) |
      \ endif

set tags=tags;/

" FZF enable
:set rtp+=/usr/bin/fzf

" CTRLp options
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$'
  \ }
nnoremap <leader>p :CtrlP<cr>
let g:ctrlp_extensions = ['tag', 'line']
function! s:setcwd()
    let cph = expand('%:p:h', 1)
    if cph =~ '^.\+://' | retu | en
    for mkr in ['.git/', '.hg/', '.svn/', '.bzr/', '_darcs/', '.vimprojects']
        let wd = call('find'.(mkr =~ '/$' ? 'dir' : 'file'), [mkr, cph.';'])
        if wd != '' | let &acd = 0 | brea | en
    endfo
    exe 'lc!' fnameescape(wd == '' ? cph : substitute(wd, mkr.'$', '.', ''))
endfunction
autocmd BufEnter * call s:setcwd()
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_dont_split = 'nerdtree'
let g:ctrlp_buftag_ctags_bin = '/usr/bin/ctags'

" Jedi
let g:jedi#completion_enabled = 0
let g:jedi#complete_opened = 1

" Let Vim and NeoVim shares the same plugin directory
let g:spacevim_plug_home = '~/.vim/plugged'

" Enable the existing layers in space-vim
let g:spacevim_layers = [
      \ 'fzf', 'better-defaults', 'which-key',
      \ ]

" Wal colorscheme
colorscheme wal
