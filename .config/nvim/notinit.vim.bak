:set number

:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'tpope/vim-surround' " Surrounding ysw)
Plug 'preservim/nerdtree' " NerdTree
Plug 'tpope/vim-commentary' " For Commenting gcc & gc
Plug 'vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'rafi/awesome-vim-colorschemes' " Retro Scheme:
Plug 'ryanoasis/vim-devicons' " Developer Icons
Plug 'tc50cal/vim-terminal' " Vim Terminal
Plug 'terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'neoclide/coc.nvim', {'branch': 'release'} " NodeJS extension support
Plug 'jiangmiao/auto-pairs' " Automatically add Closing Bracket 
Plug 'luochen1990/rainbow'  " Colored Bracket pairs
Plug 'vim-autoformat/vim-autoformat' " 
Plug 'lewis6991/gitsigns.nvim' " Add markers for change
Plug 'lukas-reineke/indent-blankline.nvim' " Show tabs, spaces and new lines
Plug 'nvim-lua/plenary.nvim' " telescope dependency
Plug 'nvim-telescope/telescope.nvim' " fuzzy searcher

call plug#end()

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews

nnoremap <C-f> :NERDTreeFocus
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-d> :term<CR>i
nnoremap <C-y> :tabe<CR>:NERDTreeFocus<CR> 
nnoremap <C-w> :w<CR>
nnoremap <C-q> :q<CR>
nnoremap <C-m> :mksession ./session.vim<CR>

let g:python3_host_prog="/usr/bin/python3"
let g:coc_disable_startup_warning = 1
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let g:NERDTreeWinPos = "right"

let g:rainbow_active = 1

" use <tab> for trigger completion and navigate to the next complete item

function! CheckBackspace() abort

	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction


inoremap <silent><expr> <Tab>
			\ coc#pum#visible() ? coc#pum#next(1) :
			\ CheckBackspace() ? "\<Tab>" :
			\ coc#refresh()

inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" Set Theme and Color Scheme
set background=dark
colorscheme sonokai

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
