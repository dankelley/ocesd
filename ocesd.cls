% LICENSE: GPL
% AUTHOR: Dan Kelley, Department of Oceanography, Dalhousie University
\def\oceversion{0.1}
\def\fileversion{v0.1}
\def\filedate{2012/06/06}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ocesd}[\filedate\space\fileversion]
\immediate\write16{Class file for student dossiers
  in the Department of Oceanography at Dalhousie University}
\def\filename{ocesd.dtx}

\def\revtex@pageid{\xdef\@thefnmark{\null}
\@footnotetext{Write dates as YYYY-MM-DD [MIP], where MIP stands for
month-in-program.  This dossier is intended to be useful for many
purposes, so it makes sense to include information in e.g. 13 and 14 that might
be useful in developing a CV for a job application.
(This document was prepared with the \texttt{ocesd} \LaTeX\/
macro, version \oceversion, available from Dan Kelley.)
}}
\let\ltx@enddoc=\enddocument
\def\enddocument{\vfill\revtex@pageid\ltx@enddoc}

\RequirePackage{ifthen}

\newcommand{\dal@ptsize}{12pt}
\newif\if@mainmatter        \@mainmattertrue
\LoadClass[\dal@ptsize]{report}
\setlength{\oddsidemargin}{-0.25in}
\setlength{\evensidemargin}{-0.25in}
\setlength{\topmargin}{-0.25in}
\setlength{\headsep}{0in}
\setlength{\textwidth}{7in}
\setlength{\textheight}{9in}
\setlength{\marginparwidth}{40pt}
\setlength{\marginparsep}{10pt}
\brokenpenalty=10000
\linespread{1.25}\normalsize
\def\sep{\hspace{0.2em plus 0.1em minus 0.1em}$\mid$\hspace{0.2em plus 0.1em minus 0.1em}}

\def\name#1{\gdef\@name{#1}}
\def\mip#1{\gdef\@mip{#1}}
\def\program#1{\gdef\@program{#1}}
\def\department#1{\gdef\@department{#1}}
\def\supervisor#1{\gdef\@supervisor{#1}}
\def\cosupervisor#1{\gdef\@cosupervisor{#1}}
\def\committee#1{\gdef\@committee{#1}}
\def\meetingdates#1{\gdef\@meetingdates{#1}}
\def\funding#1{\gdef\@funding{#1}}
\def\coursestaken#1{\gdef\@coursestaken{#1}}
\def\coursesplanned#1{\gdef\@coursesplanned{#1}}
\def\thesisproposal#1{\gdef\@thesisproposal{#1}}
\def\qualifyingexamination#1{\gdef\@qualifyingexamination{#1}}
\def\fieldwork#1{\gdef\@fieldwork{#1}}
\def\thesis#1{\gdef\@thesis{#1}}
\def\presentations#1{\gdef\@presentations{#1}}
\def\publications#1{\gdef\@publications{#1}}
\def\awards#1{\gdef\@awards{#1}}
\def\teaching#1{\gdef\@teaching{#1}}
\def\contributions#1{\gdef\@contributions{#1}}
\def\otheraccomplishments#1{\gdef\@otheraccomplishments{#1}}
\def\discussion#1{\gdef\@discussion{#1}}

\def\@name{}
\def\@mip{}
\def\@program{}
\def\@supervisor{}
\def\@cosupervisor{}
\def\@committee{}
\def\@meetingdates{}
\def\@funding{}
\def\@coursestaken{}
\def\@coursesplanned{}
\def\@thesisproposal{}
\def\@qualifyingexamination{}
\def\@fieldwork{}
\def\@thesis{}
\def\@presentations{}
\def\@publications{}
\def\@awards{}
\def\@teaching{}
\def\@contributions{}
\def\@otheracomplishments{}
\def\@discussion{}

\renewcommand\maketitle{\par
  \begingroup
  \global\@topnum\z@   % Prevents figures from going at top of page.
  \@maketitle
  \thispagestyle{empty}
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\and\relax
}

\def\@maketitle{%
  \begin{center}
    {\scshape \Large \@department\ Student Dossier\par}
    %\vskip 5pt plus 5pt minus 10pt
  \end{center}

  \noindent\textbf{1. Identification.} \@name \sep \@program \sep \@mip\ months in progress

  \noindent\textbf{2. Funding sources.} \@funding

  \noindent\textbf{3. Supervision.} supervisor \@supervisor
  \ifthenelse{\equal{\@cosupervisor}{}}{}{\sep cosupervisor \@cosupervisor}
  \sep committee: \@committee \sep meetings: \@meetingdates
  
  \noindent\textbf{4. Courses.} Completed: \@coursestaken \sep Planned: \@coursesplanned

  \noindent\textbf{5. Thesis proposal.} \@thesisproposal

  \ifthenelse{\equal{\@program}{PhD}}%
  {\noindent\textbf{6. Qualifying Examination.} \@qualifyingexamination}
  {\noindent\textbf{6. Qualifying Examination.} (NA, since in MSc program)}

  \noindent\textbf{7. Fieldwork.} \@fieldwork

  \noindent\textbf{8. Thesis.} \@thesis

  \noindent\textbf{9. Presentations.} \@presentations

  \noindent\textbf{10. Publications.} \@publications

  \noindent\textbf{11. Awards.} \@awards

  \noindent\textbf{12. Teaching.} \@awards

  \noindent\textbf{13. Contributions.} \@contributions

  \noindent\textbf{14. Other acomplishments.} \@otheraccomplishments

  \noindent\textbf{15. Discussion points.} \@discussion

  \noindent\textbf{Initials:}
  \hspace{1em}\underline{\phantom{\hspace{3em}}}\hspace{1em} (student)
  \hspace{1em}\underline{\phantom{\hspace{3em}}}\hspace{1em} (supervisor)
  \hspace{1em}\underline{\phantom{\hspace{3em}}}\hspace{1em} (graduate coordinator)

  \noindent\textbf{Date:}


}

%%% 
%%% Highly recommended packages
%\usepackage{times} 		% Better fonts, on paper and in PDF
\usepackage{mathptm} 		% Better fonts, on paper and in PDF
\usepackage{microtype} 		% Better letter spacing

\endinput
