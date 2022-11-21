

" ------- basic settings --------
set rnu nu
set cursorline
set expandtab
set autoindent
set smartindent
set softtabstop=4
set shiftwidth=4
set tabstop=4


call plug#begin('~/.local/share/nvim/site/plugged')

" ----------- colorschemes -----------
Plug 'morhetz/gruvbox'
Plug 'whatyouhide/vim-gotham'
Plug 'rakr/vim-one'
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim'
Plug 'ericbn/vim-solarized'


" ----------- dev -----------
Plug 'preservim/nerdtree'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
"Plug 'preservim/nerdcommenter'

call plug#end()



" ------- nerdtree keymaps --------
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-p> :NERDTreeFind<CR>


" ------- fzf keymaps --------
nnoremap <C-f> :Files<Cr>
"nnoremap <C-F> :Files!<Cr>
nnoremap <C-g> :GFiles<Cr>



"----------- color settings ---------
if (has("termguicolors"))
set termguicolors
endif
syntax enable

colorscheme one
set background=dark
