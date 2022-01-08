call plug#begin('~/.local/share/nvim/plugged')
" Plug 'honza/vim-snippets'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/nvim-cmp'
Plug 'rafamadriz/friendly-snippets'

" Plug 'junegunn/vim-easy-align'
" Plug 'tpope/vim-vinegar'
" Plug 'chrisbra/NrrwRgn'
Plug 'AndrewRadev/inline_edit.vim'
Plug 'AndrewRadev/deleft.vim'
Plug 'AndrewRadev/bufferize.vim'
Plug 'AndrewRadev/sideways.vim'
Plug 'liuchengxu/vista.vim'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
" Plug 'thinca/vim-quickrun'

Plug 'mhinz/vim-startify'
Plug 'tpope/vim-sleuth'
Plug 'duggiefresh/vim-easydir'

Plug 'tpope/vim-eunuch'
Plug 'dyng/ctrlsf.vim'
Plug 'tpope/vim-surround'
" Plug 'tpope/vim-commentary'
Plug 'tyru/caw.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'airblade/vim-gitgutter'
Plug 'rbong/vim-flog'
" Plug 'vim-ruby/vim-ruby'
" Plug 'tpope/vim-rails'
" Plug 'airblade/vim-localorie'
" Plug 'stefanoverna/vim-i18n'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rake'
Plug 'cohama/lexima.vim'
" Plug 'tmsvg/pear-tree'
Plug 'janko-m/vim-test'
" Plug 'davydovanton/vim-html2slim'

" Plug 'jmcantrell/vim-virtualenv'
" Plug 'lepture/vim-jinja'

" Plug 'posva/vim-vue'

Plug 'othree/html5.vim'
Plug 'tpope/vim-liquid'
" Plug 'pangloss/vim-javascript'
" Plug 'yuezk/vim-js'

Plug 'tpope/vim-ragtag'

" Plug 'mxw/vim-jsx'
Plug 'tpope/vim-haml'
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'
Plug 'leafOfTree/vim-vue-plugin'
" Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'slim-template/vim-slim'

Plug 'lifepillar/vim-solarized8'
Plug 'andbar-ru/vim-unicon'
Plug 'ajh17/Spacegray.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'jonathanfilip/vim-lucius'
Plug 'danilo-augusto/vim-afterglow'
Plug 'morhetz/gruvbox'
Plug 'srcery-colors/srcery-vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'rakr/vim-one'
Plug 'dracula/vim'
Plug 'aonemd/kuroi.vim'
Plug 'crusoexia/vim-monokai'
Plug 'Lokaltog/vim-monotone'
Plug 'fxn/vim-monochrome'
Plug 'sainnhe/everforest'

Plug 'fatih/vim-go'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
" Plug 'vimwiki/vimwiki'
" Plug 'lervag/wiki.vim'
Plug 'tpope/vim-speeddating'
Plug 'w0rp/ale'
Plug 'kopischke/vim-fetch'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'andymass/vim-matchup'
" Plug 'tpope/vim-dadbod'
Plug 'simnalamburt/vim-mundo'
" Plug 'machakann/vim-highlightedyank'
" Plug 'devjoe/vim-codequery'
" Plug 'kshenoy/vim-signature'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'AndrewRadev/switch.vim'
" Plug 'elixir-editors/vim-elixir'
Plug 'rhysd/vim-grammarous'
Plug 'jamessan/vim-gnupg'
Plug 'tpope/vim-unimpaired'
" Plug 'nelstrom/vim-visual-star-search'
Plug 'subnut/visualstar.vim'
Plug 'tpope/vim-scriptease'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'
Plug 'tyru/open-browser.vim'
Plug 'pechorin/any-jump.vim'
" Plug 'junegunn/vim-peekaboo'
Plug 'tversteeg/registers.nvim', { 'branch': 'main' }
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'voldikss/vim-floaterm'
" Plug 'Asheq/close-buffers.vim'
Plug 'Shougo/context_filetype.vim'
Plug 'liuchengxu/vim-which-key'
" Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-dispatch'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

Plug 'ethanholz/nvim-lastplace'
" Plug 'Pocco81/AutoSave.nvim'
Plug 'RRethy/vim-illuminate'
call plug#end()

filetype indent on
filetype plugin on
set nobackup
set nowritebackup
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set hidden
set magic
set number
set autoindent
set smartindent
set smarttab
set ruler
" set cursorline
set modeline
set showcmd
set noshowmode
set autoread
set autowrite
set smartcase
set ignorecase
set wildmenu
set wildmode=longest:full,full
set laststatus=2

set wildignore+=/tags
set wildignore+=*/.idea/*
set wildignore+=*/coverage/*
set wildignore+=*/.hg/*,*/.svn/*,*/.DS_Store
set lazyredraw
set updatetime=200
set incsearch
" set inccommand=split
set title
set titlestring=Neovim\ %{getcwd()}
set list
set visualbell
set wildoptions=pum
set splitbelow
set splitright
" set relativenumber
set shortmess=aFc
set cmdheight=1
" set path+=**
" set formatoptions-=c
" set formatoptions-=r
" set formatoptions-=o
set nohlsearch
" set nostartofline
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

set completeopt=menu,menuone,noselect

if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
" set showbreak=↪
" Disable commenting on new line
autocmd FileType * setlocal formatoptions-=c formatoptions -=r formatoptions-=o

" set synmaxcol=256
" syntax sync minlines=256
if has('spell')
  " Turn off spell checking
  set spelllang=en,ru
  set spellcapcheck=
  menu Spell.off :setlocal spell spelllang= <cr>
  menu Spell.Russian+English :setlocal spell spelllang=ru,en <cr>
  menu Spell.Russian :setlocal spell spelllang=ru <cr>
  menu Spell.English :setlocal spell spelllang=en <cr>
  menu Spell.-SpellControl- :
  menu Spell.Word\ Suggest<Tab>z= z=
  menu Spell.Previous\ Wrong\ Word<Tab>[s [s
  menu Spell.Next\ Wrong\ Word<Tab>]s ]s
endif

if has('mouse')
  set mouse=a
endif

if has("persistent_undo")
  set undodir=~/.nvim/undo
  set undofile
endif

" let g:EasyMotion_leader_key = '<leader>'

autocmd BufRead,BufNewFile *.html.erb setlocal syn=eruby.html

" autocmd BufRead,BufNewFile *.html.erb setlocal filetype=eruby.html
autocmd BufRead,BufNewFile *.erb let b:surround_{char2nr('=')} = "<%= \r %>"
autocmd BufRead,BufNewFile *.erb let b:surround_{char2nr('-')} = "<% \r %>"
autocmd FileType ruby,yaml,Gemfile,rake,eruby,vue,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
" autocmd BufRead,BufNewFile *.vue syn sync fromstart

if has('clipboard')
  if has('unnamedplus')
    set clipboard=unnamedplus
  else
    set clipboard=unnamed
  endif
endif
let loaded_matchit = 1
let mapleader=" "

let g:indentLine_enabled = 0
let g:vim_markdown_folding_disabled = 1

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_list_type = "quickfix"

let g:startify_change_to_dir = 0
let g:startify_session_persistence = 1

autocmd FileType gitcommit setlocal spell cursorline
autocmd FileType md setlocal spell
autocmd FileType markdown setlocal spell
au FileType fugitiveblame setlocal cursorline
au FileType fugitive setlocal cursorline
au FileType qf setlocal cursorline
au FileType floggraph setlocal nolist cursorline

" let g:NERDTreeDirArrowExpandable = '+'
" let g:NERDTreeDirArrowCollapsible = '-'

if has("termguicolors")
  set termguicolors
endif

let g:gruvbox_improved_warnings = 1

let g:jellybeans_overrides = {
      \    'RubySymbol': { 'guifg': 'cf6a4c', 'guibg': '' },
      \    'RubyStringEscape': { 'guifg': 'cf6a4c', 'guibg': '' },
      \    'javascriptObjectLiteral': { 'guifg': '', 'guibg': '' },
      \    'javascriptObjectLabel': { 'guifg': '99ad6a', 'guibg': '' },
      \    'htmlTagName': { 'guifg': 'cf6a4c' },
      \    'DiffDelete': { 'guifg': '902020' },
      \    'jsThis': { 'guifg': 'cf6a4c' }
      \}

" set background=light
set background=dark

" let g:jellybeans_background_color="000000"
" colorscheme jellybeans
" colo dracula
colorscheme gruvbox
" colorscheme PaperColor
" colorscheme spacegray
" colorscheme lucius
" colo everforest
" colo one
" colo solarized8
" colo snow
" colo afterglow
" colo kuroi
" colo monokai
" colo monotone
 " colo monochrome
" hi NERDTreeFile guibg=none
" hi NERDTreeFile guifg=none
" hi gitcommitDiscarded guibg=none

" hi link javascriptObjectLabel cleared
" hi link javascriptObjectLiteral cleared
" hi link javascriptLabel cleared
" hi link javascriptArrayMethod cleared
" hi link javascriptDOMStorageProp cleared
" hi link javascriptPaymentShippingOptionProp cleared
" hi link javascriptProp cleared
" hi link javascriptMethod cleared
" hi link javascriptTemplateSubstitution cleared
" hi link javascriptDOMFormProp cleared
" hi link javascriptBOMNavigatorProp cleared
" hi link javascriptBOMWindowMethod cleared
" hi link javascriptIdentifierName Type
hi clear jsObjectValue
hi link rubyResponse cleared
hi link rubyRoute cleared
hi link rubyMacro cleared
hi link rubyCurlyBlock cleared
hi link rubyAccess rubyMethodName
hi link rubyAttribute rubyMethodName
hi link TSSymbol String
hi link TSParameter cleared
" let g:monochrome_italic_comments = 1

let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_save = 1
let g:ale_echo_delay = 250
" let g:ale_set_highlights = 0
let g:ale_ruby_rubocop_executable = 'bundle'
let g:ale_linters = { 'javascript': ['eslint'], 'ruby': ['rubocop', 'ruby'], 'vue': ['eslint'] }

let g:ale_linter_aliases = {'html': ['html', 'javascript', 'css']}

let g:ale_fixers = { 'javascript': ['eslint'], 'ruby': ['rubocop'], 'vue': ['eslint'] }

autocmd FileType eruby.html let b:ale_linters = {'html': []}

function! ActivateRubocop()
  let g:ale_linters['ruby'] = ['rubocop', 'ruby']
  let g:ale_fixers['ruby'] = ['rubocop']
endfunction

function! DeactivateRubocop()
  let g:ale_linters['ruby'] = ['ruby']
  let g:ale_fixers['ruby'] = ['ruby']
endfunction

" function! RubyTags()
"   !ctags -R --exclude=.git --exclude=log --exclude=tmp --exclude=db --exclude=node_modules --languages=ruby `bundle show --paths 2>/dev/null; pwd`
" endfunction

" set tags+=./TAGS

" Copy current buffer path relative to root of VIM session to system clipboard
nmap <leader>yp :let @+=expand("%").":".line('.')<cr>:echo "Copied file path to clipboard"<cr>
" Copy current filename to system clipboard
nmap <leader>yf :let @+=expand("%:t")@+=expand("%:t").":".line('.')<cr>:echo "Copied file name to clipboard"<cr>
" Copy current buffer path without filename to system clipboard
nmap <leader>yd :let @+=expand("%:h").":".line('.')<cr>:echo "Copied file directory to clipboard"<cr>


" let g:NERDTreeHijackNetrw = 0
let g:jsx_ext_required = 1
let g:matchup_matchparen_deferred = 1
let g:matchup_delim_noskips = 2
let g:matchup_matchparen_timeout = 250
let g:matchup_matchparen_offscreen = { 'method': 'popup' }

autocmd FileType ruby,eruby,slim setlocal keywordprg=:vs\|\:term\ ri

" let g:NERDTreeWinPos = "right"

" autocmd vimLeavePre * NERDTreeClose

" let NERDTreeIgnore=['tags']
let g:vim_markdown_frontmatter = 1

" if strftime('%H') >= 7 && strftime('%H') < 19
"   set background=light
" else
"   set background=dark
" endif

function XDisplayColor(color)
  let displaycommand = "display -size 300x300 xc:'" . a:color . "'"
  execute "silent !" . displaycommand . " 2>&1 >/dev/null &"
  :redraw!
  return 1
endfunction

function ShowHexColorUnderCursor()
  let wordundercursor = expand("<cword>")
  :call XDisplayColor('\#' . wordundercursor)
  return 1
endfunction

function! SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

function! ValidateHtml()
  :!html-validate "%:."
endfunction

" let g:netrw_browsex_viewer="xdg-open"

nmap <leader>sp <Plug>CtrlSFPrompt
vmap <leader>sp <Plug>CtrlSFVwordPath
map <leader>' :CtrlSFToggle<CR>
 " nnoremap <leader>, <cmd>Telescope buffers<cr>
" nnoremap <leader>, <cmd>Telescope buffers<cr>
map <leader>si :BTags<CR>
nnoremap <leader>, :Buffers<CR>
nnoremap <leader>sI :Vista<cr>
" nnoremap <leader>sb :lua require'telescope.builtin'.current_buffer_fuzzy_find()<cr>

" nnoremap <leader>ff <cmd>Telescope find_files<cr>

nnoremap <leader>ff <cmd>Files<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <Leader>fr :lua require'telescope.builtin'.oldfiles{}<cr>
nnoremap <Leader>fr :History<cr>
" nnoremap <Leader>o :lua require'telescope.builtin'.file_browser{dir_icon = '🗀'}<cr>

" map <leader>fr :CocList mru<CR>
" map <leader>fr :History<CR>
map <leader>sm :Marks<CR>
map <leader>p p=`]
map <leader>sb :BLines<CR>
map <leader>sl :Lines<CR>
nnoremap <leader>fs :w<CR>
" imap <C-l> <Esc>:w<CR>
map <leader>gg :Git<CR>
map <leader>gB :Git blame<CR>
map <leader>gc :Git checkout
map <leader>go :Git commit<CR>
map <leader>gF :Git fetch<CR>
map <leader>gP :Git push
map <leader>gp :Git pull

map <leader>tn :TestNearest<CR>
map <leader>tf :TestFile<CR>
map <leader>tl :TestLast<CR>
map <leader>tv :TestVisit<CR>
map <leader>lf :ALEFix<CR>

" nmap <silent> <F2> <Plug>(coc-diagnostic-next)
" nmap <silent> <F4> <Plug>(coc-definition)
nnoremap <silent> <a-h> :SidewaysLeft<cr>
nnoremap <silent> <a-l> :SidewaysRight<cr>
" nnoremap <silent> <leader>e :FloatermNew nnn<cr>

" nnoremap <leader>e :CocCommand explorer<CR>
nnoremap <leader>e :NvimTreeToggle<CR>
nnoremap <leader>fe :NvimTreeFindFile<CR>


nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :WhichKeyVisual '<Space>'<CR>

" let g:nnn#action = {
"      \ '<c-t>': 'tab split',
"      \ '<c-x>': 'split',
"      \ '<c-v>': 'vsplit' }

let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'
let g:nnn#set_default_mappings = 0

" autocmd FileType scss setl iskeyword+=-
" autocmd FileType vue syntax sync fromstart
let g:vista#renderer#enable_icon = 0
let g:one_allow_italics = 1
let g:ale_disable_lsp=1
let g:vim_vue_plugin_config = { 
      \'syntax': {
      \   'template': ['html'],
      \   'script': ['javascript', 'typescript'],
      \   'style': ['css', 'scss', 'sass', 'less'],
      \   'i18n': ['json', 'yaml'],
      \   'route': 'json',
      \},
      \'full_syntax': ['json'],
      \'initial_indent': ['i18n', 'i18n.json', 'yaml'],
      \'attribute': 1,
      \'keyword': 1,
      \'foldexpr': 0,
      \'debug': 0,
      \}
let g:fzf_history_dir = '~/.local/share/fzf-history'

" let g:netrw_altfile = 1

" inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" Use <c-space> to trigger completion.
" inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" autocmd CursorHold * call CocActionAsync('highlight')
" nmap <F6> <Plug>(coc-rename)
" 
" augroup mygroup
"   autocmd!
"   " Setup formatexpr specified filetype(s).
"   autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"   " Update signature help on jump placeholder
"   autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
" augroup end
" command! -nargs=0 Format :call CocAction('format')
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" imap <C-k> <Plug>(coc-snippets-expand-jump)
" Use <C-j> for jump to next placeholder, it's default of coc.nVIM
" let g:coc_snippet_next = '<c-j>'
" Use <C-k> for jump to previous placeholder, it's default of coc.nVIM
" let g:coc_snippet_prev = '<c-k>'

let g:ctrlsf_extra_backend_args = {
      \ 'ag': '--hidden', 'rg': '--hidden --ignore-file ~/.ignore --ignore-vcs'
      \ }


" autocmd BufWritePost * GitGutter
if &background ==# 'light'
  let $BAT_THEME='GitHub'
endif

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" let g:coc_global_extensions = ['coc-json', 'coc-highlight', 'coc-html', 'coc-snippets', 'coc-explorer', 'coc-lists']
let g:airline_powerline_fonts = 1

" let g:chadtree_settings = { "theme": { "icon_glyph_set": "emoji" }}
" 
" 
" let g:chadtree_colours = {
"      \ "8_bit": {
"      \   "Black":         { "hl24": "#07242c", "hl8": "Black"},
"      \   "Red":           { "hl24": "#fc6195", "hl8": "DarkRed" },
"      \   "Green":         { "hl24": "#5AC6A1", "hl8": "DarkGreen" },
"      \   "Yellow":        { "hl24": "#fff1ac", "hl8": "DarkYellow" },
"      \   "Blue":          { "hl24": "#296873", "hl8": "DarkBlue" },
"      \   "Magenta":       { "hl24": "#85919b", "hl8": "DarkMagenta" },
"      \   "Cyan":          { "hl24": "#04a7a7", "hl8": "DarkCyan" },
"      \   "White":         { "hl24": "#c4c7c7", "hl8": "LightGray" },
"      \   "BrightBlack":   { "hl24": "#142c35", "hl8": "Grey" },
"      \   "BrightRed":     { "hl24": "#fc81a5", "hl8": "LightRed" },
"      \   "BrightGreen":   { "hl24": "#233439", "hl8": "LightGreen" },
"      \   "BrightYellow":  { "hl24": "#DF7353", "hl8": "LightYellow" },
"      \   "BrightBlue":    { "hl24": "#6FaEaF", "hl8": "LightBlue" },
"      \   "BrightMagenta": { "hl24": "#364f6b", "hl8": "LightMagenta" },
"      \   "BrightCyan":    { "hl24": "#94e7e7", "hl8": "LightCyan" },
"      \   "BrightWhite":   { "hl24": "#dafafc", "hl8": "White" },
"      \ }}

" let g:any_jump_colors = {
"      \"plain_text":         "Comment",
"      \"preview":            "Comment",
"      \"preview_keyword":    "Operator",
"      \"heading_text":       "Function",
"      \"heading_keyword":    "Identifier",
"      \"group_text":         "Comment",
"      \"group_name":         "Function",
"      \"more_button":        "Operator",
"      \"more_explain":       "Comment",
"      \"result_line_number": "Comment",
"      \"result_text":        "Statement",
"      \"result_path":        "String",
"      \"help":               "Comment"
"      \}

let test#strategy = "dispatch"
" let g:vista_ctags_executable = "u_ctags"
" let g:fzf_tags_command = 'u_ctags -R'
" let g:quickrun_no_default_key_mappings=1

augroup vimrc-incsearch-highlight
  autocmd!
  autocmd CmdlineEnter /,\? :setl hlsearch
  autocmd CmdlineLeave /,\? :setl nohlsearch
augroup END

augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
augroup END

" highlight CocHighlightText  ctermfg=LightMagenta    guifg=LightMagenta

" let g:CtrlSpaceDefaultMappingKey = "<C-space> "
" let g:CtrlSpaceSaveWorkspaceOnSwitch = 1
" let g:CtrlSpaceSaveWorkspaceOnExit = 1
let $FZF_DEFAULT_COMMAND="rg --files --hidden -g '!/.git'"


lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "ruby","javascript","html","json","python","yaml","css","scss", "comment", "vue" }, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  -- ensure_installed = { "ruby", "comment" }, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  -- ignore_install = { "vue" }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "ruby" },  -- list of language that will be disabled
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
 indent = {
    enable = true,
    -- disable = { "vue" },
  },
  matchup = {
    enable = true,              -- mandatory, false will disable the whole extension
    -- disable = { "vue" },  -- optional, list of language that will be disabled
  },
}
EOF

" highlight TSKeyword ctermfg=11 guifg='#00ff00'
" highlight TSLabel ctermfg=33 guifg='#ff0000'
" au FileType ruby setl foldmethod=expr foldexpr=nvim_treesitter#foldexpr()

let g:netrw_banner=0
" let g:netrw_browse_split=4
" let g:netrw_altv=1
" let g:netrw_liststyle=3

let g:netrw_list_hide=netrw_gitignore#Hide()

let g:fzf_buffers_jump = 1

" let g:vimwiki_list = [{'path': '~/Dropbox/wiki/', 'syntax': 'markdown', 'ext': '.md'}]
" let g:vimwiki_ext2syntax = {}
let g:airline_highlighting_cache = 1

" let g:coc_disable_transparent_cursor = 1

" let g:floatterm_width = 150
" let g:floatterm_height = 40
" 


" autocmd FileType vue inoremap <buffer><expr> : InsertColon()

" function! InsertColon()
"   let tag = GetVueTag()
"   return tag == 'template' ? ':' : ': '
" endfunction

" function! OnChangeVueSyntax(syntax)
"   echom 'Syntax is '.a:syntax
"   if a:syntax == 'html'
"     setlocal commentstring=<!--%s-->
"     setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
"   elseif a:syntax =~ 'css'
"     setlocal comments=s1:/*,mb:*,ex:*/ commentstring&
"   else
"     setlocal commentstring=//%s
"     setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
"   endif
" endfunction

let g:nvim_tree_show_icons = {
   \ 'git': 1,
   \ 'folders': 0,
   \ 'files': 0,
   \ 'folder_arrows': 0,
   \ }

lua <<EOF
  require'nvim-tree'.setup({   filters = {
    dotfiles = false,
    custom = {".git"}
  }, })
EOF


lua <<EOF
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)


  local lspconfig = require('lspconfig')
  -- vim.o.completeopt = 'menuone,noselect'
  local luasnip = require 'luasnip'
  local cmp = require 'cmp'

  require("luasnip/loaders/from_vscode").lazy_load()

  local has_words_before = function()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
  end

cmp.setup {
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
 ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'path' },
    { name = 'buffer' },
  },
}
EOF

let g:nvim_tree_indent_markers = 1
" let g:wiki_root = '~/wiki'
" let g:wiki_filetypes = ['md']
" let g:wiki_link_extension = '.md'


lua require'nvim-lastplace'.setup{}
let g:lastplace_ignore_buftype = "quickfix,nofile,help,ctrlsf"
let g:lastplace_ignore_filetype = "gitcommit,gitrebase,hgcommit"
let g:lastplace_open_folds = 1

"lua << EOF
"local autosave = require("autosave")

" autosave.setup(
"     {
"         enabled = true,
"         execution_message = "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"),
"         events = {"InsertLeave", "TextChanged"},
"         -- events = {"InsertLeave", "TextChanged", "WinLeave", "FocusLost", "BufHidden", "BufLeave"},
"         conditions = {
"             exists = true,
"             filename_is_not = {"./git/*"},
"             filetype_is_not = {},
"             modifiable = true
"         },
"         write_all_buffers = false,
"         on_off_commands = true,
"         clean_command_line_interval = 0,
"         debounce_delay = 135
"     }
" )
" EOF
