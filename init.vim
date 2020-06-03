runtime macros/matchit.vim

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'majutsushi/tagbar'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'alvan/vim-closetag'
Plug 'voldikss/vim-floaterm'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
Plug 'dyng/ctrlsf.vim'

call plug#end()

syntax on
colorscheme onedark
highlight Normal ctermbg=Black

set number

autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

autocmd VimEnter * nested :TagbarOpen

set tabstop=4
set shiftwidth=4
set expandtab

inoremap  <C-o>:call NERDComment(0, "toggle")<C-m>

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.vue'
let g:closetag_filetypes = 'html,xhtml,phtml,vue'

hi FloatermNF guibg=black
let g:floaterm_keymap_new = '<C-t>'
let g:floaterm_keymap_toggle = '<C-y>'
let g:floaterm_position = 'center'

" let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.ejs'
" let g:closetag_filetypes = 'html,xhtml,phtml,ejs'
