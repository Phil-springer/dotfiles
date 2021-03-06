syntax enable

set hidden

set background=dark
colorscheme solarized
set gfn=Inconsolata\ for\ Powerline:h12
set fillchars+=stl:\ ,stlnc:\
set encoding=utf-8
set term=xterm-256color
set termencoding=utf-8

set hlsearch
set number
set list
set laststatus=2

set tabstop=4
set shiftwidth=4
set softtabstop=4
" Use spaces instead of tabs
set expandtab

set smartindent
set autoindent
if has("autocmd")
    filetype on
    filetype indent on
    filetype plugin on

    autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
endif

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" TextMate keybindings for indentation
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

cnoreabbrev <expr> w!!
                \((getcmdtype() == ':' && getcmdline() == 'w!!')
                \?('!sudo tee % >/dev/null'):('w!!'))

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
