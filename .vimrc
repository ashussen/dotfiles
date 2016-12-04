set nocompatible              " be iMproved, required
filetype off                  " required

" -------------------- Vundle ---------------------- 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'posva/vim-vue'
Plugin 'nelsyeung/twig.vim'
Plugin 'zacanger/angr.vim'

call vundle#end()            " required
filetype plugin indent on    " required
" -------------------- Vundle End ---------------------- 

" vim-airline {
    " Set configuration options for the statusline plugin vim-airline.
    " Use the powerline theme and optionally enable powerline symbols.
    " To use the symbols , , , , , , and .in the statusline
    " segments add the following to your .vimrc.before.local file:
    "   let g:airline_powerline_fonts=1
    " If the previous symbols do not render for you then install a
    " powerline enabled font.

    " See `:echo g:airline_theme_map` for some more choices
    " Default in terminal vim is 'dark'
    if isdirectory(expand("~/.vim/bundle/vim-airline-themes/"))
        if !exists('g:airline_theme')
            let g:airline_theme = 'solarized'
        endif
        if !exists('g:airline_powerline_fonts')
            " Use the default set of separators with a few customizations
            let g:airline_left_sep='›'  " Slightly fancier than '>'
            let g:airline_right_sep='‹' " Slightly fancier than '<'
        endif
    endif
" }

syntax on
set laststatus=2
set ttimeoutlen=50
set cursorline
set number
colorscheme angr

let mapleader = "\<Space>"
nmap <leader>e :NERDTreeToggle<cr>
inoremap jk <esc>
set pastetoggle=<leader>p
