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
Plugin 'digitaltoad/vim-pug'

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

" vim-setting {
  syntax on
  set laststatus=2
  set ttimeoutlen=50
  set cursorline
  set number
  colorscheme angr
  set expandtab
  set shiftwidth=2
  set softtabstop=2
  set autoindent
  set clipboard=unnamed
  set backspace=indent,eol,start " backspace over everything in insert mode
  let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
  let g:airline#extensions#tabline#fnamemod = ':t' " Show just the filename
  " This allows buffers to be hidden if you've modified a buffer.
  " This is almost a must if you wish to use buffers in this way.
  set hidden
  set foldenable                " enable folding
  set foldlevelstart=10         " open most folds by default
  set foldnestmax=10            " 10 nested fold max
  set foldmethod=indent         " fold based on indent level

  autocmd BufWritePre * :%s/\s\+$//e
" }

" map-keys {
  let mapleader = "\<Space>"
  nmap <leader>e :NERDTreeToggle<cr>
  nmap <leader>w :w<cr>
  inoremap jk <esc>

  " Navigate between Split
  map <C-j> <C-W>j
  map <C-k> <C-W>k
  map <C-h> <C-W>h
  map <C-l> <C-W>l

  " To open a new empty buffer
  " This replaces :tabnew which I used to bind to this mapping
  nmap <leader>T :enew<cr>

  " Move to the next buffer
  nmap <leader>l :bnext<CR>

  " Move to the previous buffer
  nmap <leader>h :bprevious<CR>

  " Close the current buffer and move to the previous one
  " This replicates the idea of closing a tab
  nmap <leader>bq :bp <BAR> bd #<CR>

  " Show all open buffers and their status
  nmap <leader>bl :ls<CR>

  " , open/close folds
  nnoremap , za

  " resize splitting
  nnoremap <left> :vertical resize +5<CR>
  nnoremap <right> :vertical resize -5<CR>
  nnoremap <up> :resize +5<CR>
  nnoremap <down> :resize -5<CR>
" }
