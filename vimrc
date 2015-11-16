set nocompatible               " be iMproved
 filetype off                   " required!

 filetype plugin indent on     " required!

" Setting up Vundle - the vim plugin bundler
    let iCanHazVundle=1
    let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
    if !filereadable(vundle_readme)
        echo "Installing Vundle.."
        echo ""
        silent !mkdir -p ~/.vim/bundle
        silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
        let iCanHazVundle=0
    endif
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
    Bundle 'gmarik/vundle'
    "Add your bundles here
	" original repos on github
	" Bundle 'tpope/vim-fugitive'
	" Bundle 'Lokaltog/vim-easymotion'
	" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
	" Bundle 'tpope/vim-rails.git'
	Bundle 'kien/ctrlp.vim'
" 	Bundle 'scrooloose/nerdtree'
 "	Bundle 'SirVer/ultisnips'
" 	Bundle 'Valloric/YouCompleteMe'
"	Bundle 'altercation/vim-colors-solarized'
 	" vim-scripts repos
 	Bundle 'L9'
	Bundle 'FuzzyFinder'
	" non github repos
	" Bundle 'git://git.wincent.com/command-t.git'
 	" git repos on your local machine (ie. when working on your own plugin)
	" Bundle 'file:///Users/gmarik/path/to/plugin'
 	" ...


   " Bundle 'Syntastic'
    "Bundle 'altercation/vim-colors-solarized' "T-H-E colorscheme
    "Bundle 'https://github.com/tpope/vim-fugitive' "So awesome, it should be illegal 
    "...All your other bundles...
    if iCanHazVundle == 0
        echo "Installing Bundles, please ignore key map error messages"
        echo ""
        :BundleInstall
    endif
" Setting up Vundle - the vim plugin bundler end





 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

 if has ('gui_running')
     set background=dark
     colorscheme solarized
     set lines=999 columns=999
 endif

 syntax on 

 set nu
 set ts=4
 set tabstop=4   " Set the default tabstop
 set softtabstop=4
 set shiftwidth=4 " Set the default shift width for indents
 set expandtab   " Make tabs into spaces (set by tabstop)
 set smarttab " Smarter tab levels
 set hlsearch
 set ignorecase
 set incsearch
 set nowrap
 set textwidth=0
 set backspace=indent,eol,start	" more powerful backspacing
 set autoindent
 set noswapfile
 set nobackup

 "visual
 set showmatch  " Show matching brackets.
 set matchtime=5  " Bracket blinking.
 "set mouse-=a   " Disable mouse
 set mousehide  " Hide mouse after chars typed
 
 set splitbelow
 set splitright
 
 let g:ctrlp_working_path_mode = 'c'
 let g:ctrlp_map = '<c-p>'
 let g:UltiSnipsExpandTrigger="<c-j>"
 
 set noerrorbells visualbell t_vb=
 if has('autocmd')
   autocmd GUIEnter * set visualbell t_vb=
 endif
 
 
 
 map <C-Right> :bnext!<ENTER> 
 map <C-Left> :bprevious!<ENTER>
" map <C-h> <C-w>h 
" map <C-j> <C-w>j
" map <C-k> <C-w>k
" map <C-l> <C-w>l
" map <C-s> <C-w>s
" map <C-v> <C-w>v
" map <C-o> <C-w>o
 vmap <C-c> "+y
 vmap <C-x> "+c
 vmap <C-v> c<ESC>"+p
 imap <C-v> <C-r><C-o>+
