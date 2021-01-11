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

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

" this allows copying vim text into the clipboard using y command 
" install MacPorts
" sudo -v port install vim +huge
set clipboard=unnamedplus,unnamed,autoselect

" Latex configurations
autocmd BufNewFile,BufRead *.tex set textwidth=100
autocmd BufNewFile,BufRead *.tex command Tinfo VimtexInfo
autocmd BufNewFile,BufRead *.tex command Ttocopen VimtexTocOpen
autocmd BufNewFile,BufRead *.tex command Ttoctoggle VimtexTocToggle
autocmd BufNewFile,BufRead *.tex command Tcompile VimtexCompile
autocmd BufNewFile,BufRead *.tex command Tstop VimtexStop
autocmd BufNewFile,BufRead *.tex command Tclean VimtexClean

" vimtexinfo: show all relevant info about current LaTeX project.
" vimtextocopen: show table of contents window
" vimtextoctoggle: toggle table of contents window
" vimtexcompile: Compile the current LaTeX source file and opens the viewer after successful compilation.
" vimtexstop: Stop compilation for the current project.
" vimtexclean: clean auxiliary files generated in compliation process.
