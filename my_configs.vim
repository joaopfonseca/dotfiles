" Vim Plug - plugin manager setup
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
Plug 'terryma/vim-smooth-scroll'
Plug 'dart-lang/dart-vim-plugin'
call plug#end()

" Latex stuff
let g:tex_flavor = 'latex'
let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_compiler_latexmk = {
    \ 'build_dir' : '',
    \ 'callback' : 1,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'hooks' : [],
    \ 'options' : [
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}

" General stuff
set runtimepath+=~/.vim_runtime
set nu " shows line number by default

if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

" Works for Mac
" this allows copying vim text into the clipboard using y command 
" install MacPorts
" sudo -v port install vim +huge

" Works for Fedora - copy to system clipboard
" Install vim-X11

set clipboard=unnamedplus,unnamed,autoselect

" Allow mouse interaction
set mouse=a

" Latex and markdown configurations
autocmd BufNewFile,BufRead *.md  set textwidth=78
autocmd BufNewFile,BufRead *.rst set textwidth=78
autocmd BufNewFile,BufRead *.tex set textwidth=78
autocmd BufNewFile,BufRead *.tex command Tinfo VimtexInfo
autocmd BufNewFile,BufRead *.tex command Ttocopen VimtexTocOpen
autocmd BufNewFile,BufRead *.tex command Ttoctoggle VimtexTocToggle
autocmd BufNewFile,BufRead *.tex command Tcompile VimtexCompile
autocmd BufNewFile,BufRead *.tex command Tstop VimtexStop
autocmd BufNewFile,BufRead *.tex command Tclean VimtexClean

" Smooth scrolling
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 20, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 20, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 20, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 20, 4)<CR>

" transparent background
" hi Normal guibg=NONE ctermbg=NONE

" Show NERDTree on the right side of the screen
let g:NERDTreeWinPos = "right"
