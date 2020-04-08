let mapleader =","

" ======================================== PLUGINS ========================================
" Install vimplug
if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
    echo "Downloading junegunn/vim-plug to manage plugins..."
    silent !mkdir -p ~/.config/nvim/autoload/
    silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
endif

" Plug sources
call plug#begin('~/.config/nvim/plugged')

" Universal editing
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
Plug 'junegunn/goyo.vim'
Plug 'unblevable/quick-scope'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Completion
Plug 'metalelf0/supertab'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" File tree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Status line
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Color schemes
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'dylanaraps/wal.vim'
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': ['c', 'cpp'] }

" Note taking
Plug 'vimwiki/vimwiki'
Plug 'suan/vim-instant-markdown', { 'for': 'markdown' }
Plug 'lervag/vimtex', { 'for': ['tex', 'bib'] }

" Frontend development
Plug 'maxmellon/vim-jsx-pretty', { 'for': ['javascript', 'jsx', 'javascriptreact'] }
Plug 'alvan/vim-closetag', { 'for': ['javascript', 'jsx', 'javascriptreact', 'html', 'xml'] }
call plug#end()

" ==================== BASICS ====================
" Quality of life
set background=dark
set mouse=a
set number relativenumber
set hlsearch
set wrap
set title
set titleold=st
set clipboard=unnamedplus
set undodir=~/.config/nvim/undodir
set undofile
set encoding=UTF-8
set noshowmode
set expandtab
set tabstop=8
set softtabstop=0
set shiftwidth=4
set smarttab
set foldmethod=indent
set foldlevel=99
set splitbelow splitright
set wildmode=list,full
set rtp+=../UltiSnips
filetype plugin on
syntax on

" Coc settings
set hidden
set nobackup
set nowritebackup
set updatetime=300
set signcolumn=yes
set shortmess+=c

" ==================== COLORS ====================
color wal
highlight CursorLine ctermbg=9 cterm=none
highlight CursorColumn ctermbg=9
highlight CursorLineNr ctermfg=2
highlight WildMenu ctermfg=0 ctermbg=3
highlight Statusline ctermfg=7 ctermbg=none cterm=none
highlight Pmenu ctermbg=233
highlight PmenuSel ctermfg=0 ctermbg=3
highlight QuickScopePrimary cterm=underline ctermfg=155
highlight QuickScopeSecondary cterm=underline ctermfg=81
highlight CocErrorFloat ctermfg=3
highlight Statement ctermfg=3
highlight Identifier cterm=None
highlight vimUserCommand ctermfg=10

" ==================== PLUGIN VARIABLES =====================
" supertab
let g:SuperTabDefaultCompletionType = "<C-n>"

" coc.nvim

" vimtex
let g:vimtex_compiler_progname = 'nvr'

" vim-cpp-enhanced-highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_concepts_highlight = 1

" quick-scope
let g:qs_highlight_on_keys=['f', 'F', 't', 'T']
let g:qs_max_chars=150

" vimwiki
let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown', '.md': 'markdown', '.markdown': 'markdown'}
let g:vimwiki_list = [{'path': '~/Documents/Notebooks/Vimwiki', 'syntax': 'markdown', 'ext': '.rmd'}]

" nerdtree/nerdtree-git-plugin/vim-nerdtree-syntax-highlight
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:NERDTreeGitStatusNodeColorization = 1
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : "☒",
    \ "Unknown"   : "?"
    \ }

" vim-airline
let g:airline_powerline_fonts=1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#fugitiveline#enabled = 1
let g:airline#extensions#wordcount#enabled= 1
let g:airline#extensions#wordcount#filetypes=['vimwiki', 'help', 'mail', 'markdown', 'tex', 'text', 'groff', 'rmarkdown']
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#coc#error_symbol = 'E:'
let g:airline#extensions#coc#warning_symbol = 'W:'

" vim-instant-markdown
let g:instant_markdown_autostart = 0

" vim-jsx-pretty
let g:vim_jsx_pretty_colorful_config = 1

" vim-closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js'
let g:closetag_filetypes = 'html,xhtml,phtml,js'
let g:closetag_xhtml_filetypes = 'xhtml,jsx,js'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<Leader>>'

" goyo.vim
let g:goyo_width=90

" fzf.vim
let g:fzf_layout = { 'window': 'call CreateCenteredFloatingWindow()' }
let $FZF_DEFAULT_OPTS="--reverse"
let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-s': 'split',
    \ 'ctrl-v': 'vsplit',
    \ 'ctrl-r': 'read'
    \ }

" ===================== MAPS ====================
" Quick fzf commands
map <Leader>. :Files<CR>
map <Leader> :Maps<CR>,
map <Leader>m :Buffers<CR>

" Goyo modes
map <Leader>F :Goyo \| set bg=dark \| set linebreak<CR>

" Vim replacement for up and down
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

" Tmux compatibility
map <C-q> <C-a>

" Toggle interface
map <Leader>l :call LocationToggle()<CR>
map <Leader>n :NERDTreeToggle<CR>

" Toggle spell check
map <Leader>o :setlocal spell! spelllang=en_us<CR>

" Split navigation shortcuts
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Run shell scripts
map <Leader>s :!clear && shellcheck %<CR>
map <Leader>c :w! \| !compiler "<c-r>%"<CR>
map <Leader>p :!opout "<c-r>%" &<CR><CR>
map <Leader>w :w !detex \| wc -w<CR>

" Navigating with guides
inoremap <Leader><Leader> <Esc>/<++><CR>"_c4l
vnoremap <Leader><Leader> <Esc>/<++><CR>"_c4l
map <Leader><Leader> <Esc>/<++><CR>"_c4l

" Show cursor
nmap + :set cursorline! cursorcolumn!<CR>

" Fix c
nnoremap c "_c

" Coc movements
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use <c-space> to trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code
xmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)

" Applying codeAction to the selected region
xmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>ac <Plug>(coc-codeaction)

" Apply AutoFix to problem on the current line.
nmap <leader>x <Plug>(coc-fix-current)

" Coclist maps
nnoremap <silent> <space>a :<C-u>CocList diagnostics<cr>
nnoremap <silent> <space>e :<C-u>CocList extensions<cr>
nnoremap <silent> <space>c :<C-u>CocList commands<cr>
nnoremap <silent> <space>o :<C-u>CocList outline<cr>
nnoremap <silent> <space>s :<C-u>CocList -I symbols<cr>
nnoremap <silent> <space>j :<C-u>CocNext<CR>
nnoremap <silent> <space>k :<C-u>CocPrev<CR>
nnoremap <silent> <space>p :<C-u>CocListResume<CR>

" Replace K with coc doc
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Introduce function text object
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Templates
nmap <F2> :CocList templates<CR>

" ==================== AUTOCMDS ====================
" Clean tex junk on exit
autocmd VimLeave *.tex !texclear %

" Recognize files properly
autocmd BufRead,BufNewFile /tmp/calcurse*,~/.calcurse/notes/* set filetype=markdown
" autocmd VimEnter,BufRead,BufNewFile *.md,*.rmd set filetype=markdown
" autocmd BufRead,BufNewFile */Vimwiki/* set filetype=vimwiki
autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff
autocmd BufRead,BufNewFile *.tex set filetype=tex
autocmd BufRead,BufNewFile *.asm set syntax=nasm

" Deletes trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Set tmux window name
autocmd BufReadPost,FileReadPost,BufNewFile,BufEnter * call system("tmux rename-window " . expand("%:t"))
autocmd VimLeave * call system("tmux setw automatic-rename")

" Close nerdtree on last window
autocmd Bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Disable auto commenting new lines
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Easy navigation for vimwiki
autocmd BufRead,BufNewFile */Vimwiki/* map J <Plug>VimwikiNextLink
autocmd BufRead,BufNewFile */Vimwiki/* map K <Plug>VimwikiPrevLink

" Recognize comments in json
autocmd FileType json syntax match Comment +\/\/.\+$+

" ==================== COMMANDS OR FUNCTIONS ====================
" Fzf add preview
command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, {'options': ['--preview', 'preview {}']}, <bang>0)

" Fzf floating window
function! CreateCenteredFloatingWindow()
    let width = min([&columns - 4, max([80, &columns - 20])])
    let height = min([&lines - 4, max([20, &lines - 10])])
    let top = ((&lines - height) / 2) - 1
    let left = (&columns - width) / 2
    let opts = {'relative': 'editor', 'row': top, 'col': left, 'width': width, 'height': height, 'style': 'minimal'}
    let top = "╭" . repeat("─", width - 2) . "╮"
    let mid = "│" . repeat(" ", width - 2) . "│"
    let bot = "╰" . repeat("─", width - 2) . "╯"
    let lines = [top] + repeat([mid], height - 2) + [bot]
    let s:buf = nvim_create_buf(v:false, v:true)
    call nvim_buf_set_lines(s:buf, 0, -1, v:true, lines)
    call nvim_open_win(s:buf, v:true, opts)
    set winhl=Normal:Floating
    let opts.row += 1
    let opts.height -= 2
    let opts.col += 2
    let opts.width -= 4
    call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
    au BufWipeout <buffer> exe 'bw '.s:buf
endfunction

" Toggle location list
function! LocationToggle()
    if get(getloclist(0, {'winid':0}), 'winid', 0)
        lclose
    else
        lopen
    endif
endfunction

" Use K to show documentation in preview window.
function! s:show_documentation()
  if (index(['vim','help','sh','bash','zsh','c','cpp'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

" Word processor mode
" https://jasonheppler.org/2012/12/05/word-processor-mode-in-vim/
function! WordProcessorMode()
    setlocal formatoptions=t1
    setlocal textwidth=80
    map j gj
    map k gk
    setlocal smartindent
    setlocal spell spelllang=en_us
    setlocal noexpandtab
endfunction
command! WP call WordProcessorMode()
