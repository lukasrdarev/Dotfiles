



" ----------- plugins -----------
call plug#begin('~/.local/share/nvim/site/plugged')


" ----------- colorschemes -----------
Plug 'morhetz/gruvbox'
Plug 'whatyouhide/vim-gotham'
Plug 'rakr/vim-one'
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim'
Plug 'ericbn/vim-solarized'
Plug 'tomasr/molokai'
Plug 'arcticicestudio/nord-vim'
Plug 'ayu-theme/ayu-vim'
Plug 'sickill/vim-monokai'
Plug 'sjl/badwolf'
Plug 'mhartington/oceanic-next'
Plug 'drewtempelmeyer/palenight.vim'


" ----------- dev -----------
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
"Plug 'preservim/nerdcommenter'

call plug#end()


" ------- nerdtree keymaps --------
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-p> :NERDTreeFind<CR>


" ------- fzf keymaps --------
nnoremap <C-f> :Files ~<Cr>
"nnoremap <C-F> :Files!<Cr>
nnoremap <C-g> :GFiles<Cr>


" ------- basic settings --------
set rnu nu
set cursorline
set expandtab
set autoindent
set smartindent
set softtabstop=4
set shiftwidth=4
set tabstop=4
set mouse=a
set ignorecase "Case insensitive pattern matching
set smartcase  "Disable ignorecase when pattern contains uppercase characters
 


"----------- color settings ---------
if (has("termguicolors"))
set termguicolors
endif

syntax enable
syntax=on

set background=dark
colorscheme ayu
