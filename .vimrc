set nocompatible              " required
filetype off                  " required

let mapleader =" "

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Bundle 'Valloric/YouCompleteMe'
Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-fugitive'
Plugin 'alvan/vim-closetag'
Plugin 'jaredly/vim-debug'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set number
set relativenumber
set so=10
set syntax=on

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" UTF8 encoding
set encoding=utf-8

" Auto completion improvements
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

set tabstop=4 shiftwidth=4 expandtab
set smarttab
set softtabstop=4
set autoindent

" Theme
set background=dark
colorscheme gruvbox
let g:gruvbox_contrast='hard'

" Spell check
set spelllang=en
set spellfile=~/.vim/spell/en.utf-8.add
set spell

" ctrl-c ctrl-v for in and outside vim
vnoremap <C-c> "+y
map <C-v> "+P

" tex shortcuts
autocmd FileType tex inoremap ,ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><Esc>3kA\item<Space>
autocmd FileType tex inoremap ,ul \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><Esc>3kA\item<Space>
autocmd FileType tex inoremap ,li <Enter>\item<Space>
autocmd FileType tex inoremap ,chap \chapter{}<Enter><Enter><Esc>2kf}
autocmd FileType tex inoremap ,sec \section{}<Enter><Enter><Esc>2kf}i
autocmd FileType tex inoremap ,ssec \subsection{}<Enter><Enter><Esc>2kf}i
autocmd FileType tex inoremap ,sssec \subsubsection{}<Enter><Enter><Esc>2kf}i
autocmd FileType tex inoremap ,up \usepackage{}<Esc>i
autocmd FileType tex inoremap ,bf \textbf{}<Esc>T{i
autocmd FileType tex inoremap ,it \textit{}<Esc>T{i
autocmd FileType tex inoremap ,fig \FloatBarrier<Enter>\begin{figure}<Enter>\centering\includegraphics[width=\textwidth]{}<Enter>\label{fig:}<Enter>\caption{}<Enter>\end{figure}<Enter>\FloatBarrier<Esc>4kf}i
autocmd FileType tex inoremap ,toc \addcontentsline{toc}{}{}<Esc>2hi
autocmd FileType tex inoremap ,ali \begin{align*}<Enter>//<Enter>\end{align*}<Esc>k$hi
autocmd FileType tex inoremap ,alg \FloatBarrier<Enter>\begin{algorithm}<Enter>\caption{}<Enter>\label{}<Enter>\begin{algorithmic}[1]<Enter>\end{algorithmic}<Enter>\end{algorithm}<Enter>\FloatBarrier<Esc>5kf}i
autocmd FileType tex inoremap ,eq \begin{equation} \label{}<Enter><Enter>\end{equation}<Esc>2k$i
autocmd FileType tex inoremap ,cas \begin{cases}<Enter>//<Enter>\end{cases}<Esc>k$hi
autocmd FileType tex inoremap ,gp \FloatBarrier<Enter>\begin{figure}[h]<Enter>\centering<Enter>\begin{tikzpicture}<Enter>\begin{groupplot}[group style={group size=1 by 1}, height=0.5\textwidth, width=0.5\textwidth]<Enter>\nextgroupplot[title=]<Enter>\addplot[]{}<Enter>\addlegendentry{}<Enter>\end{groupplot}<Enter>\end{tikzpicture}<Enter>\caption{}<Enter>\end{figure}<Enter>\FloatBarrier<Esc>7kf]i
autocmd FileType tex inoremap ,lst \begin{lstlisting}[language=]<Enter>\end{lstlisting}<Esc>kf]i
autocmd FileType tex inoremap ,proc \Procedure{}{}<Enter>\EndProcedure<Esc>k$2hi
autocmd FileType tex inoremap ,if \If{}<Enter>\EndIf<Esc>k$i
autocmd FileType tex inoremap ,whi \While{}<Enter>\EndWhile<Esc>k$i
autocmd FileType tex inoremap ,for \For{}<Enter>\EndFor<Esc>k$i
autocmd FileType tex inoremap ,ret \State \textbf{return} 
autocmd FileType tex inoremap ,tab \begin{center}<Enter>\begin{tabular}{}<Enter>\\<Enter>\end{tabular}<Enter>\end{center}<Esc>3k$i
autocmd FileType tex inoremap ,à \`a
autocmd FileType tex inoremap ,â \^a
autocmd FileType tex inoremap ,é \'e
autocmd FileType tex inoremap ,è \`e
autocmd FileType tex inoremap ,ê \^e
autocmd FileType tex inoremap ,ë \"e
autocmd FileType tex inoremap ,ò \`o
autocmd FileType tex inoremap ,ô \^o
autocmd FileType tex inoremap ,ö \"o
autocmd FileType tex inoremap ,ù \`u
autocmd FileType tex inoremap ,û \^u
autocmd FileType tex inoremap ,ü \"u

" Fix for .tex files highlighting and co
let g:tex_flavor = "latex"
