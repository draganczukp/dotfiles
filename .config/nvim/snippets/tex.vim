inoremap <buffer> ,enum \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Space>
inoremap <buffer> ,it \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item<Space>
inoremap <buffer> ,tab \begin{tabular}<Enter><++><Enter>\end{tabular}<Enter><Enter><++><Esc>4kA{}<Esc>i
inoremap <buffer> ,a \href{}{<++>}<Space><++><Esc>2T{i
inoremap <buffer> ,sec \section{}<Enter><Enter><++><Esc>2kf}i
inoremap <buffer> ,ssec \subsection{}<Enter><Enter><++><Esc>2kf}i
inoremap <buffer> ,sssec \subsubsection{}<Enter><Enter><++><Esc>2kf}i
inoremap <buffer> ,ref (\ref{})<++><Esc>F}i
