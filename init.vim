

" ====================== ~/.config/nvim/init.vim" ===========================



"  ---------------- general --------------------
set rnu
inoremap kj <Esc>
set clipboard=unnamedplus	" using system clipboard
set cursorline			" highlight current cursorline

set pastetoggle=<F10> 	   	
"paste with ctrl-v while in insert mode
inoremap <C-v> <F10><C-r>+<F10>	 
" yank visual selection into clipboard with ctrl-c
vnoremap <C-c> "+y		

" move line or visually selected block - alt+j/k
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" move split panes to left/bottom/top/right
 nnoremap <A-h> <C-W>H
 nnoremap <A-j> <C-W>J
 nnoremap <A-k> <C-W>K
 nnoremap <A-l> <C-W>L

" move between panes to left/bottom/top/right
 nnoremap <C-h> <C-w>h
 nnoremap <C-j> <C-w>j
 nnoremap <C-k> <C-w>k
 nnoremap <C-l> <C-w>l

" Press i to enter insert mode, and ii to exit insert mode.
:inoremap ii <Esc>
:inoremap kj <Esc>
:vnoremap kj <Esc>

" open new split panes to right and below
set splitright
set splitbelow


" copies filepath to clipboard by pressing yf
" :nnoremap <silent> yf :let @+=expand('%:p')<CR>
" copies pwd to clipboard: command yd
" :nnoremap <silent> yd :let @+=expand('%:p:h')<CR>


" --------------------- plugins ------------------------
call plug#begin('~/.local/share/nvim/site/plugged')

" 	----------- themes ---------
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/seoul256.vim'
Plug 'jaredgorski/spacecamp'
Plug 'lifepillar/vim-solarized8'
Plug 'reedes/vim-colors-pencil'

"       ----------- dev ------------
Plug 'neoclide/coc.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
" Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'chun-yang/auto-pairs'

call plug#end()


" ------------------- color settings -----------
 if (has("termguicolors"))
 set termguicolors
 endif
 syntax enable



syntax on
set background=dark
colorscheme gruvbox
