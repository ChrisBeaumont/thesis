%%
%% This is file `uhthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% uhthesis.dtx  (with options: `class')
%%
%% LaTeX2e document class for formatting University of Hawaii theses
%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uhthesis}[2001/04/01 University of Hawaii thesis format]
\newif\if@preprint
\DeclareOption{preprint}{\@preprinttrue}
\newif\if@explicittwoside
\DeclareOption{10pt}{\PassOptionsToClass{\CurrentOption}{book}}
\DeclareOption{11pt}{\PassOptionsToClass{\CurrentOption}{book}}
\DeclareOption{12pt}{\PassOptionsToClass{\CurrentOption}{book}}
\DeclareOption{oneside}{\PassOptionsToClass{\CurrentOption}{book}}
\DeclareOption{twoside}{\@explicittwosidetrue
  \PassOptionsToClass{\CurrentOption}{book}} \ProcessOptions\relax
\LoadClass{book}
\if@explicittwoside\else
\@twosidefalse \@mparswitchfalse
\fi
\RequirePackage{setspace}
\setlength{\textwidth}{6.0in}
\setlength{\textheight}{8.5in}
\setlength{\topmargin}{0in}
\setlength{\headheight}{0in}
\setlength{\headsep}{0in}
\setlength{\oddsidemargin}{0.5in}
\if@twoside
\setlength{\evensidemargin}{0in}
\fi
\pagestyle{plain}
\renewcommand\listoffigures{%
    {\addcontentsline{toc}{chapter}{List of Figures}} %-% added this line
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}%
              {\MakeUppercase\listfigurename}}%
    \@starttoc{lof}%
    \if@restonecol\twocolumn\fi
    }
\renewcommand\listoftables{%
    {\addcontentsline{toc}{chapter}{List of Tables}} %-% added this line
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename
      \@mkboth{%
          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}%
    \@starttoc{lot}%
    \if@restonecol\twocolumn\fi
    }
\def\@makechapterhead#1{%
  \vspace*{50\p@}%
  \begin{center}\LARGE\bfseries
    \@chapapp\space \thechapter\\
    #1
  \end{center}
  \vskip 40\p@
  }
\def\@makeschapterhead#1{%
  \vspace*{50\p@}%
  \begin{center}\LARGE\bfseries
    #1
  \end{center}
  \vskip 40\p@
  }
\def\oneappendix#1{
  \appendix
  \def\@makeapphead##1{%
    \vspace*{50\p@}%
    \begin{center}\LARGE\bfseries
      \@chapapp\space \thechapter\\
      ##1
    \end{center}
    \vskip 40\p@
    }
  \refstepcounter{chapter}%
  \typeout{Appendix.}%
  \addcontentsline{toc}{chapter}{Appendix: #1}
  \chaptermark{}%
  \addtocontents{lof}{\protect\addvspace{10\p@}}%
  \addtocontents{lot}{\protect\addvspace{10\p@}}%
  \if@twocolumn
  \@topnewpage[\@makeapphead{#1}]%
  \else
  \@makeapphead{#1}%
  \@afterheading
  \fi
}
\def\l@chapter{\@dottedtocline{0}{0em}{1.2em}}
\def\@chapter[#1]#2{%
  \ifnum \c@secnumdepth >\m@ne
     \if@mainmatter
       \refstepcounter{chapter}%
       \typeout{\@chapapp\space\thechapter.}%
       \addcontentsline{toc}{chapter}% %-% Changed
         {\protect\numberline{\@chapapp\space\thechapter:}%
          \protect\phantom{Chapter:}#1}%
     \else
       \addcontentsline{toc}{chapter}{#1}%
     \fi
  \else
    \addcontentsline{toc}{chapter}{#1}%
  \fi
  \chaptermark{#1}%
  \addtocontents{lof}{\protect\addvspace{10\p@}}%
  \addtocontents{lot}{\protect\addvspace{10\p@}}%
  \if@twocolumn
    \@topnewpage[\@makechapterhead{#2}]%
  \else
    \@makechapterhead{#2}%
    \@afterheading
  \fi}
\if@preprint\singlespacing\else
  \pretolerance=10000
  \widowpenalty=10000
  \clubpenalty=10000
  \doublespacing
\fi
\renewcommand{\bibname}{References}
\renewcommand{\contentsname}{Table of Contents}
\def\ifundefined#1{\expandafter\ifx\csname#1\endcsname\relax}
\newcommand\chairperson[1]{\def\@chairperson{#1}}
\newcommand\memberA[1]{\def\@memberA{#1}}
\newcommand\memberB[1]{\def\@memberB{#1}}
\newcommand\memberC[1]{\def\@memberC{#1}}
\newcommand\memberD[1]{\def\@memberD{#1}}
\newcommand\memberE[1]{\def\@memberE{#1}}
\newcommand\memberF[1]{\def\@memberF{#1}}
\global\let\thanks\relax
\global\let\and\relax
\global\let\@thanks\@empty
\renewcommand\maketitle{
  \pagestyle{empty}
  \null
  \vfil
  \begin{center}
    \@title\\[7ex]
    \begin{singlespace}
      A DISSERTATION SUBMITTED TO THE GRADUATE DIVISION OF THE \\
      UNIVERSITY OF HAWAI`I AT M\=ANOA IN PARTIAL FULFILLMENT OF THE \\
      REQUIREMENTS FOR THE DEGREE OF \\[3ex]
    \end{singlespace}
    DOCTOR OF PHILOSOPHY \\
    IN \\
    ASTRONOMY \\[3ex]
    \@date \\[10ex]
    \begin{singlespace}
      By \\
      \@author\\[5ex]
      Dissertation Committee: \\[3ex]
      \@chairperson, Chairperson
      \ifundefined{@memberA}\else{\\ \@memberA}\fi
      \ifundefined{@memberB}\else{\\ \@memberB}\fi
      \ifundefined{@memberC}\else{\\ \@memberC}\fi
      \ifundefined{@memberD}\else{\\ \@memberD}\fi
      \ifundefined{@memberE}\else{\\ \@memberE}\fi
      \ifundefined{@memberF}\else{\\ \@memberF}\fi
    \end{singlespace}
  \end{center}
  \vfil
  \clearpage        % By ending the page we get the pagestyle right ...
  \pagestyle{plain} % ... before resetting it for the next page
  \global\let\maketitle\relax
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  }
\newcommand{\makesig}{
  \cleardoublepage
  \noindent
  \parbox{5in}{ % \textwidth-1in
  We certify that we have read this dissertation and that,
  in our opinion, it is satisfactory in scope and quality as a dissertation
  for the degree of Doctor of Philosophy in Astronomy.}
  \vskip 100 pt
  \hfill\parbox{2.2in}{DISSERTATION COMMITTEE\\[.3in]
    \rule{2.2in}{.01in}\\ Chairperson
    \ifundefined{@memberA}\else{
      \\[.3in] \rule{2.2in}{.01in}}\fi
    \ifundefined{@memberB}\else{
      \\[.3in] \rule{2.2in}{.01in}}\fi
    \ifundefined{@memberC}\else{
      \\[.3in] \rule{2.2in}{.01in}}\fi
    \ifundefined{@memberD}\else{
      \\[.3in] \rule{2.2in}{.01in}}\fi
    \ifundefined{@memberE}\else{
      \\[.3in] \rule{2.2in}{.01in}}\fi
    \ifundefined{@memberF}\else{
      \\[.3in] \rule{2.2in}{.01in}}\fi
    }
  \hspace{1in} % Make sure we're an inch away from the regular margin
  \vfil\clearpage}
\newcommand{\dedication}[1]{
\cleardoublepage
\begin{table}[p]
#1
\end{table}
}
\newcommand{\makeacknowledgements}{
   \chapter*{Acknowledgements}
   \addcontentsline{toc}{chapter}{Acknowledgements}
}
\newcommand{\makeabstract}{
   \chapter*{Abstract}
   \addcontentsline{toc}{chapter}{Abstract}
}
\newcommand{\makecopyright}[2]{
   \cleardoublepage
   \null
   \vfill
   \begin{center}
     \begin{singlespace}
       \LARGE \normalsize
       \copyright~Copyright #1 \\
       by \\
       #2 \\
       All Rights Reserved
     \end{singlespace}
   \end{center}
}
\endinput
%%
%% End of file `uhthesis.cls'.
