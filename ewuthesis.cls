%%      Maintainer:  David McInnis <davidm@eagles.ewu.edu>
%%      Used clsguide.pdf as reference -> http://mirrors.rit.edu/CTAN/macros/latex/doc/clsguide.pdf
%%      This class was origionally a fork of jfhbrook/uafthesis, but has since been completely re-written
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ewuthesis}[2016/01/05 Eastern Washington University Thesis]
\RequirePackage{import}
\RequirePackage[letterpaper, top=1in, bottom=1in, left=1.5in, right=1in, twoside=false]{geometry}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}

\ProcessOptions\relax

\LoadClass[oneside]{book}        % My class is built upon the book class
                                 % EWU Thesis documents are always one-sided

\renewcommand{\maketitle}{      %TODO: Fix formatting, add missing fields and make is fill the page better
    \begin{titlepage}
        \begin{center}
            \MakeUppercase{\@title}\\
            \rule{\textwidth}{.4pt}
            A Thesis\\
            Presented To\\
            Eastern Washington University\\
            Cheney, Washington\\
            \rule{\textwidth}{.4pt}
            In Partial Fulfillment of the Requirements\\
            for the Degree\\
            .....\\
            \rule{\textwidth}{1pt}
            by\\
            \@author
        \end{center}
    \end{titlepage}
    \newpage
}

\newcommand{\makesigline}[1]{
    \par\noindent\makebox[2.5in]{\hrulefill} \hfill\makebox[2.0in]{\hrulefill}%
    \par\noindent\makebox[2.5in][l]{#1, GRADUATE STUDY COMMITTE}      \hfill\makebox[2.0in][l]{Date}%
}

\newcommand{\makesigpage}{
    \begin{center}
        THESIS OF \@author\ APPROVED BY\\
    \end{center}
    \makesigline{....}\\
    \makesigline{....}\\
    \makesigline{....}
    \newpage
}

\newcommand{\makevita}{         %TODO: Fix formatting, probably use tabular style to make things look better
    \begin{center}
        VITA
    \end{center}
    
    \begin{itemize}
        \item Author: \@author
        \item Place of Birth: 
        \item Degrees Awarded:
        \item Professional Experience:
    \end{itemize}


}

