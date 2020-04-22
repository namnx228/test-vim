"--------THIS IS VUNDLE----------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugin 'tpope/vim-surround'
Plugin 'machakann/vim-sandwich'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-commentary'
Plugin 'plasticboy/vim-markdown'
Plugin 'vimwiki/vimwiki'
" Plugin 'JamshedVesuna/vim-markdown-preview'
" Plugin 'gabrielelana/vim-markdown'
Plugin 'conornewton/vim-pandoc-markdown-preview'
Plugin 'scrooloose/nerdtree'
Plugin 'tomlion/vim-solidity'
Plugin 'lervag/vimtex'
Plugin 'godlygeek/tabular'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'ryanoasis/vim-devicons'
Plugin 'zoom.vim'
Plugin 'reedes/vim-wordy'
Plugin 'reedes/vim-lexical'
Plugin 'reedes/vim-pencil'
Plugin 'fatih/vim-go'

" Plugin 'plasticboy/vim-markdown'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"-------------------------------------
"------------VIM-WIKI-----------------
set nocompatible
filetype plugin on
syntax on
let g:vimwiki_list = [{'path': '~/vimwiki/NamNoteBook', 'syntax': 'markdown', 'ext': '.mkd'}, 
                      \ {'path': '~/vimwiki/NamNoteBookDefaultFormat/',  'syntax': 'default', 'ext': '.mkd'}]
" autocmd FileType vimwiki set ft=markdown
:nmap <Leader>b <Plug>VimwikiGoBackLink

" Change table motion of vim-table-mode
:nmap <Leader>p <Plug>(table-mode-motion-left)
:nmap <Leader>n <Plug>(table-mode-motion-right)
"-------------------------------------
"-----------THIS-IS-COLOR-SCHEMA------
if has("gui_running")
  source ~/.vim/color/dragon-energy.vim
else
  source ~/.vim/color/dark-meadow.vim
  " source ~/.vim/color/hackerman.vim
  
endif
" source ~/.vim/color/vice.vim
" source ~/.vim/color/sv.vim
highlight htmlBold term=bold cterm=bold gui=bold 
highlight htmlItalic term=italic cterm=italic gui=italic 
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_edit_url_in = 'tab'
let g:vim_markdown_no_extensions_in_markdown = 1
let g:vim_markdown_auto_extension_ext = 'mkd'
set conceallevel=0
:hi VimwikiHeader1 ctermfg=199 guifg=#d7005f
:hi VimwikiHeader2 ctermfg=220 guifg=#afaf00
:hi VimwikiHeader3 ctermfg=10 guifg=#008700
" :nmap <SHIFT><ENTER> <Plug>VimwikiTabnewLink
" :hi Todo ctermfg=Green
"-------------------------------------
"---------THIS IS MINE------------------
:imap jj <ESC>
:set number
:set expandtab
:set shiftwidth=2
:set softtabstop=2
:set autoindent
:set splitbelow
:set splitright
:nnoremap <C-J> <C-W><C-J>
:nnoremap <C-K> <C-W><C-K>
:nnoremap <C-L> <C-W><C-L>
:nnoremap <C-H> <C-W><C-H>
set pastetoggle=<F2>
:inoremap <C-v> <ESC>"+pa
:vnoremap <C-c> "+y
:vnoremap <C-d> "+d
"--------------------------------------
"----------------COPY-PASTE-CLIPBOARD-----------
noremap <Leader>c "+y
noremap <Leader>V "+P
noremap <Leader>v "+p
"-----------------------------------------------


"----------------test-------------------------
" function! TextEnableCodeSnip(filetype,start,end,textSnipHl) abort
"   let ft=toupper(a:filetype)
"   let group='textGroup'.ft
"   if exists('b:current_syntax')
"     let s:current_syntax=b:current_syntax
"     " Remove current syntax definition, as some syntax files (e.g. cpp.vim)
"     " do nothing if b:current_syntax is defined.
"     unlet b:current_syntax
"   endif
"   execute 'syntax include @'.group.' syntax/'.a:filetype.'.vim'
"   try
"     execute 'syntax include @'.group.' after/syntax/'.a:filetype.'.vim'
"   catch
"   endtry
"   if exists('s:current_syntax')
"     let b:current_syntax=s:current_syntax
"   else
"     unlet b:current_syntax
"   endif
"   execute 'syntax region textSnip'.ft.'
"   \ matchgroup='.a:textSnipHl.'
"   \ keepend
"   \ start="'.a:start.'" end="'.a:end.'"
"   \ contains=@'.group
" endfunction

" call TextEnableCodeSnip('sh', '@begin=sh@', '@end=sh@', 'SpecialComment')
" call TextEnableCodeSnip('c', '@begin=c@', '@end=c@', 'SpecialComment')
"--------------------------------------------
"-------------------VIM-NERD-TREE------------
" autocmd vimenter * NERDTree
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"-------------------------------------------
"------------------KITE---------------------

" set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
" set laststatus=2  " always display the status line
"
" To have the preview window automatically closed once a completion has been inserted:
autocmd CompleteDone * if !pumvisible() | pclose | endif
" Function signature
" :KiteShowPopularPatterns
" <C-X><C-U> at the (
let g:kite_tab_complete=1
" Turn off autocomplete
" let g:kite_auto_complete=0
" let g:kite_snippets=0
" -----------------------------------------
"  --------This is for Icon---------------
set encoding=UTF-8
"  --------------------------------------
"  -------This is for Lexicon-----------
augroup lexical
  autocmd!
  " autocmd FileType markdown call lexical#init()
  autocmd FileType textile call lexical#init()
  autocmd FileType tex call lexical#init()
  autocmd FileType text call lexical#init({ 'spell': 0 })
augroup END
" let g:lexical#spell = 1
let g:lexical#spelllang = ['en_us','en_ca',]
let g:lexical#thesaurus = ['~/.vim/thesaurus/mthesaur.txt',]
let g:lexical#dictionary = ['/usr/share/dict/words',]
let g:lexical#spell_key = '<leader>s'
let g:lexical#thesaurus_key = '<leader>t'
let g:lexical#dictionary_key = '<leader>k'

"  ------------------------------------
"  ------This is for Pencil--------------
let g:pencil#wrapModeDefault = 'soft' 
let g:pencil#autoformat = 1 
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType tex call pencil#init()
  autocmd FileType text call pencil#init({'wrap': 'hard'})
augroup END

"  --------------------------------------
"  ------------For-GO--------------------
if (&ft=='go')
  set backspace=indent,eol,start
endif
"  --------------------------------------
