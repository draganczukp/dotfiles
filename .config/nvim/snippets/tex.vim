inoremap <buffer> ,tab \begin{tabular}<Enter><++><Enter>\end{tabular}<Enter><Enter><++><Esc>4kA{}<Esc>i
inoremap <buffer> ,a \href{}{<++>}<Space><++><Esc>2T{i
inoremap <buffer> ,sec \section{}<Enter><Enter><++><Esc>2kf}i
inoremap <buffer> ,ssec \subsection{}<Enter><Enter><++><Esc>2kf}i
inoremap <buffer> ,sssec \subsubsection{}<Enter><Enter><++><Esc>2kf}i
inoremap <buffer> ,ref (\ref{})<++><Esc>F}i
inoremap <buffer> ,ul \begin{itemize}<Enter><--><Enter>\end{itemize}<Enter><++><Esc>?<--><CR>"_4s
inoremap <buffer> ,ol \begin{enumerate}<Enter><--><Enter>\end{enumerate}<Enter><++><Esc>?<--><CR>"_4s
inoremap <buffer> ,it \item 
inoremap <buffer> ,img \begin{figure}[h]<CR>\centering<cr>\includegraphics[height=10cm]{<-->}<CR>\label{fig:<++>}<CR>\caption{<++>}<CR>\end{figure}<ESC><<o<++><ESC>?<--><CR>"_4s
inoremap <buffer> ,` \verb`<-->` <++><ESC>?<--><CR>"_4s
inoremap <buffer> ,`` \lstinputlisting{<-->}<CR><++><ESC>?<--><CR>"_4s
inoremap <buffer> ,``` \begin{lstlisting}<CR><--><CR>\end{lstlisting}<CR><++><ESC>?<--><CR>"_4s
