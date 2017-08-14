"autoindenting/tab
set autoindent
filetype plugin indent on
set tabstop=4 "<TAB> when opening
set softtabstop=4 "<TAB> when entered while editing
set expandtab

let mapleader="\<Space>"

"misc keybindings
inoremap jj <ESC>
nnoremap <leader><space> :nohlsearch<CR>

let g:clang_library_path='/usr/local/opt/llvm/lib'

"misc
set number
syntax on
set showcmd
set wildmenu
set incsearch "search as you enter chars

"backspace
set backspace=indent,eol,start

set smartcase

set directory=~/.vim/swap//

"automatically set current dir
set autochdir

"GUI stuff
so ~/.vim/gui.vim

"rtags
function! SetupNeocomleteForCppWithRtags()
    " Enable heavy omni completion.
    setlocal omnifunc=RtagsCompleteFunc

    if !exists('g:neocomplete#sources#omni#input_patterns')
        let g:neocomplete#sources#omni#input_patterns = {}
    endif
    let l:cpp_patterns='[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
    let g:neocomplete#sources#omni#input_patterns.cpp = l:cpp_patterns 
    set completeopt+=longest,menuone
endfunction
autocmd FileType cpp,c call SetupNeocomleteForCppWithRtags()

inoremap <C-@> <C-X><C-O>
