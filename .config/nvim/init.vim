set runtimepath^=~/.config/nvim runtimepath+=~/.config/nvim/after runtimepath+=~/.config/nvim/autoload
let &packpath = &runtimepath

:set number
:set ls=2
:set tabstop=4
:set expandtab
:set softtabstop=4
:set shiftwidth=4 smarttab
:set t_Co=256
:set nowrap
:set clipboard=unnamedplus
:set autoindent 
:set cindent
:set si
:set encoding=utf-8
:set showmatch
:set hlsearch
:set ignorecase
:set noswapfile
:set mouse=a
:set autochdir
:set wrap
:set notimeout

:syntax enable
:setlocal foldmethod=indent 
:filetype plugin on

" Remove highlight after search
nnoremap <silent> <leader>\ :noh<CR>

" Display Hidden Characters
" (https://redd.it/4hoa6e)
set listchars=tab:│\ 
if &encoding == "utf-8"
	set showbreak=↪\ 
	set listchars+=eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
else
	set showbreak=>\ 
	set listchars+=eol:$,nbsp:_,trail:.,extends:>,precedes:<
endif

" Keep 5 lines padding when scrolling
set scrolloff=5

" Copy selected text to system clipboard (requires xclip installed):
:vnoremap <C-c> "cy<esc>:!echo -n '<C-R>c' \|<space>pbcopy<CR><enter>

:let mapleader="\<space>"
:set ttyfast
:noremap <silent> #3 :bp<CR>
:noremap <silent> #4 :bn<CR>
:map <F8> :setlocal spell! spelllang=en_us<CR>
:set pastetoggle=<F2>

let g:python_host_prog = '~/.pyenv/versions/nvim2/bin/python'
let g:python3_host_prog = '~/.pyenv/versions/nvim3/bin/python'


" ########################################__Plug__##################################################
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

" Language
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'moll/vim-node'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --all' }
Plug 'nvie/vim-ini'
Plug 'hiphish/jinja.vim'
Plug 'tpope/vim-markdown'
Plug 'sheerun/vim-polyglot'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'stanangeloff/php.vim'
Plug 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script parse-stubs'}
Plug 'phpactor/phpactor', { 'do' : ':call phpactor#Update()', 'for' : 'php' }
Plug 'tpope/vim-rails'
Plug 'tpope/vim-haml'
Plug 'othree/html5.vim'
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'w0rp/ale'
Plug 'dart-lang/dart-vim-plugin'
Plug 'https://github.com/ap/vim-css-color'
Plug 'chrisbra/unicode.vim'
Plug 'jceb/vim-orgmode'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

" Other
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'mattn/emmet-vim'
Plug 'liuchengxu/vim-which-key' ", { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'vim-scripts/utl.vim'
Plug 'tpope/vim-speeddating'
Plug 'chrisbra/NrrwRgn'
Plug 'mattn/calendar-vim'
Plug 'vim-scripts/SyntaxRange'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'mileszs/ack.vim'
Plug 'mattn/gist-vim'
Plug 'junegunn/limelight.vim'
Plug 'matze/vim-move'
Plug 'editorconfig/editorconfig-vim'
Plug 'https://github.com/simnalamburt/vim-mundo' ", { 'on': 'MundoToggle' }
Plug 'Shougo/denite.nvim'
Plug 'terryma/vim-multiple-cursors'
Plug 'Shougo/echodoc.vim'
Plug 'bagrat/vim-buffet'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
" Plug 'majutsushi/tagbar'
Plug 'liuchengxu/vista.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'simnalamburt/vim-mundo'

" Initialize plugin system
call plug#end()

" #####################################__Configurations__######################################
" Enable persistent undo so that undo history persists across vim sessions
set undofile
set undodir=~/.config/nvim/undo
nnoremap <F5> :MundoToggle<CR>

:set cmdheight=2

" Move__######################################
let g:move_key_modifier = 'C'

" Limelight__######################################
nnoremap <F3> :Limelight!! 0.5

" Ack__######################################
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

" Gist__######################################
let g:gist_clip_command = 'xclip -selection clipboard'
let g:gist_detect_filetype = 1
let g:gist_browser_command = 'w3m %URL%'

" Mundo__######################################
nnoremap <F7> :MundoToggle<CR>
let g:mundo_width = 60
let g:mundo_right = 1
set undofile
set undodir=~/.vim/undo

" ALE options__######################################
let g:ale_completion_enabled = 0
let g:ale_sign_column_always = 1
let g:ale_sign_error = '⚑'
let g:ale_sign_warning = '⚐'
let g:ale_linters = {
    \ 'javascript': ['standard']
    \ }
let g:ale_fixers = { 'javascript': ['standard'] }
let g:ale_lint_on_save = 0
let g:ale_fix_on_save = 0

" Dart options__######################################
let dart_format_on_save = 1
let dart_style_guide = 2
let dart_html_in_string=v:true

" Gitgutter__######################################
let g:gitgutter_enable = 1
let g:gitgutter_sign = 1
let g:gitgutter_highlight_lines = 0
:map <F6> :GitGutterLineHighlightsToggle<CR>

" Startify__######################################
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
        \ '~/Workspace/NodeJS/Start/front/',
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

" Airline__######################################
let g:airline#extensions#tabline#enable = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1
" let g:airline_theme = 'simple'
let g:airline_theme = 'violet'
" let g:airline_theme = 'badwolf'
set laststatus=2

command -nargs=? Guifont call rpcnotify(0, 'Gui', 'SetFont', "<args>") | let g:Guifont="Fira Mono for Powerline:h13"

" DevIcon__######################################
" set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11
set guifont=Fira\ Mono\ for\ Powerline\ 11
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

" Workspace__######################################
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

" NerdCommenter__######################################
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 'c' : { 'left' : '/**', 'right' : '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

" Tagbar__######################################
nmap <F5> :TagbarToggle<CR>

" NERDTree__######################################
:map <F9> :NERDTreeToggle<CR>
:autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
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

" NerdTree Git__######################################
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

nmap <Leader>l :set list!<CR>
set autochdir
if has('gui_runnig')
    highlight Pmenu guibg=#cccccc gui=bold
endif

" Ctags__######################################
autocmd BufWritePost *
        \ if filereadable('tags') |
        \   call system('ctags -a '.expand('%')) |
        \ endif
set tags=tags;/

:set rtp+=/usr/bin/fzf

" CTRLp__######################################
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore = {
        \ 'dir' : '\v[\/]\.(git|hg|svn)$',
        \ 'file' : '\v\.(exe|so|dll)$'
        \ }
nnoremap <Leader>p :CtrlP<CR>
let g:ctrlp_extentions = ['tag', 'line']
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

" Markdown__######################################
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
let g:markdown_minlines = 100
" Coc__######################################
" set set g:coc_global_extensions =
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
vmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)


" Add diagnostic info for https://github.com/itchyny/lightline.vim
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status'
      \ },
      \ }



" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
" nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" Fix Completion Issue__######################################
set completeopt=noinsert,menuone,noselect

set shortmess+=c
inoremap <c-c> <ESC>
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Vista
" How each level is indented and what to prepend.
" This could make the display more compact or more spacious.
" e.g., more compact: ["▸ ", ""]
" Note: this option only works the LSP executives, doesn't work for `:Vista ctags`.
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

" Executive used when opening vista sidebar without specifying it.
" See all the avaliable executives via `:echo g:vista#executives`.
let g:vista_default_executive = 'ctags'

" Set the executive for some filetypes explicitly. Use the explicit executive
" instead of the default one for these filetypes when using `:Vista` without
" specifying the executive.
let g:vista_executive_for = {
  \ 'cpp': 'vim_lsp',
  \ 'php': 'vim_lsp',
  \ }

" Declare the command including the executable and options used to generate ctags output
" for some certain filetypes.The file path will be appened to your custom command.
" For example:
let g:vista_ctags_cmd = {
      \ 'haskell': 'hasktags -x -o - -c',
      \ }

" To enable fzf's preview window set g:vista_fzf_preview.
" The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
" For example:
let g:vista_fzf_preview = ['right:50%']
" Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
let g:vista#renderer#enable_icon = 1

" The default icons can't be suitable for all the filetypes, you can extend it as you wish.
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }

" YouCompleteMe
let g:ycm_filetype_specific_completion_to_disable = {
      \ 'python': 1
      \}

colorscheme dracula
