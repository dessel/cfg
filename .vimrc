"""" START Vundle Configuration

"set nocompatible

" Disable file type for vundle
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Utility
Plugin 'scrooloose/nerdtree'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'BufOnly.vim'

Plugin 'iamcco/markdown-preview.vim'

Plugin 'kchmck/vim-coffee-script'
Plugin 'slim-template/vim-slim.git'

" Generic Programming Support
Plugin 'Townk/vim-autoclose'
Plugin 'vim-syntastic/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'

" Ruby Support
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'ecomba/vim-ruby-refactoring'

" Erlang Support
Plugin 'vim-erlang/vim-erlang-tags'
Plugin 'vim-erlang/vim-erlang-runtime'
Plugin 'vim-erlang/vim-erlang-omnicomplete'
Plugin 'vim-erlang/vim-erlang-compiler'

" Elixir Support
Plugin 'elixir-lang/vim-elixir'
Plugin 'avdgaag/vim-phoenix'
Plugin 'mmorearty/elixir-ctags'
Plugin 'mattreduce/vim-mix'
Plugin 'BjRo/vim-extest'
Plugin 'frost/vim-eh-docs'
Plugin 'slashmili/alchemist.vim'
Plugin 'tpope/vim-endwise'
Plugin 'jadercorrea/elixir_generator.vim'

" Theme / Interface
Plugin 'AnsiEsc.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'luochen1990/rainbow'

Plugin 'morhetz/gruvbox'
Plugin 'tomasr/molokai'
Plugin 'ajh17/Spacegray.vim'
Plugin 'atelierbram/Base2Tone-vim'
Plugin 'nanotech/jellybeans.vim'

call vundle#end()            " required
filetype plugin indent on    " required
"""" END Vundle Configuration


"""""""""""""""""""""""""""""""""""""
" Configuration Section
"""""""""""""""""""""""""""""""""""""
" workaround for https://github.com/vim/vim/issues/1671
if has("unix")
  let s:uname = system("echo -n \"$(uname)\"")
  if !v:shell_error && s:uname == "Linux"
    set t_BE=
  endif
endif

set nowrap

" Show linenumbers
set number

"number of space characters that will be inserted when the tab key is pressed
set tabstop=2

"number of space characters inserted for indentation
set shiftwidth=2

"to insert space characters whenever the tab key is pressed
set expandtab

set smarttab

" Always display the status line
set laststatus=2

" Enable highlighting of the current line
set cursorline

" Configure backspace so it acts as it should act
set backspace=eol,start,indent

set clipboard=unnamedplus

" Theme and Styling
syntax on
set t_Co=256
"set background=dark
"let g:solarized_termcolors=256

"let base16colorspace=256  " Access colors present in 256 colorspace
"colorscheme gruvbox
"colorscheme jellybeans
colorscheme spacegray
"colorscheme solarized

"let g:spacegray_underline_search = 1
"let g:spacegray_italicize_comments = 1

" Configure completion
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1


" Vim-Airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='hybrid'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1

" Syntastic Configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1

" RainbowToggle - 0 let enable it via :RainbowToggle
let g:rainbow_active = 1

" Slim
autocmd BufNewFile,BufRead *.slim setlocal filetype=slim

"
let g:easytags_async = 1

" Automatically removing all trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

if has('mouse')
  set mouse=a
endif

" open markdown preview in browser
let g:mkdp_path_to_chrome = "firefox"

"""""""""""""""""""""""""""""""""""""
" Mappings configurationn
"""""""""""""""""""""""""""""""""""""
" nmap <C-\> :NERDTreeFind<CR>
nmap <silent> <leader><leader> :NERDTreeToggle<CR>

" Shortcuts
nnoremap <Leader>o :Files<CR>
nnoremap <Leader>O :CtrlP<CR>

" Switch to alternate file
" map <C-n> :bnext<CR>
" map <C-p> :bprevious<CR>

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>
nnoremap <silent> <bs> <C-w><Left>

" Map resize by arrow movement
nnoremap <C-Up>    :resize -2<CR>
nnoremap <C-Down>  :resize +2<CR>
nnoremap <C-Left>  :vertical resize +2<CR>
nnoremap <C-Right> :vertical resize -2<CR>

" fix paste mode
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode


