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

%\def\revtex@pageid{\xdef\@thefnmark{\null}
%\@footnotetext{Write dates as YYYY-MM-DD [MIP], where MIP stands for
%month-in-program.  This dossier is intended to be useful for many
%purposes, so it makes sense to include information in e.g. 13 and 14 that might
%be useful in developing a CV for a job application.
%(This document was prepared with the \texttt{ocesd} \LaTeX\/
%macro, version \oceversion, available from Dan Kelley.)
%}}
%\let\ltx@enddoc=\enddocument
%\def\enddocument{\vfill\revtex@pageid\ltx@enddoc}
%
\RequirePackage{ifthen}
\RequirePackage{amssymb}

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
\def\banner#1{\gdef\@banner{#1}}
\def\startdate#1{\gdef\@startdate{#1}}
\def\mip#1{\gdef\@mip{#1}}
\def\program#1{\gdef\@program{#1}}
\def\phdtransfer#1{\gdef\@phdtransfer{#1}}
\def\department#1{\gdef\@department{#1}}
\def\supervisor#1{\gdef\@supervisor{#1}}
\def\cosupervisor#1{\gdef\@cosupervisor{#1}}
\def\committee#1{\gdef\@committee{#1}}
\def\meetingdates#1{\gdef\@meetingdates{#1}}
\def\funding#1{\gdef\@funding{#1}}
\def\scholarships#1{\gdef\@scholarships{#1}}
\def\coursestaken#1{\gdef\@coursestaken{#1}}
\def\coursesplanned#1{\gdef\@coursesplanned{#1}}
\def\thesisproposal#1{\gdef\@thesisproposal{#1}}
\def\qualifyingexamination#1{\gdef\@qualifyingexamination{#1}}
\def\fieldwork#1{\gdef\@fieldwork{#1}}
\def\thesis#1{\gdef\@thesis{#1}}
\def\extension#1{\gdef\@extension{#1}}
\def\presentations#1{\gdef\@presentations{#1}}
\def\publications#1{\gdef\@publications{#1}}
\def\awards#1{\gdef\@awards{#1}}
\def\teaching#1{\gdef\@teaching{#1}}
\def\contributions#1{\gdef\@contributions{#1}}
\def\otheraccomplishments#1{\gdef\@otheraccomplishments{#1}}
\def\discussion#1{\gdef\@discussion{#1}}

\def\@name{}
\def\@banner{}
\def\@startdate{}
\def\@mip{}
\def\@program{}
\def\@phdtransfer{}
\def\@supervisor{}
\def\@cosupervisor{}
\def\@committee{}
\def\@meetingdates{}
\def\@funding{}
\def\@scholarships{}
\def\@coursestaken{}
\def\@coursesplanned{}
\def\@thesisproposal{}
\def\@qualifyingexamination{}
\def\@fieldwork{}
\def\@thesis{}
\def\@extension{}
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

  % FIXME: the form can compute MIP directly from the start date
  \noindent\textbf{1. Identification.} \@name \sep \@banner \sep \@program
  \ifthenelse{\equal{\@phdtransfer}{}}{}{\ (transferred \@phdtransfer\ from MSc)}\sep \@startdate\ [\@mip\ months in program]

  \noindent\textbf{2. Funding sources.} \@funding

  \noindent\textbf{3. Scholarships.} \@scholarships

  \noindent\textbf{4. Supervision.}\footnote{Committee meetings are to be held at least twice per year.} supervisor \@supervisor
  \ifthenelse{\equal{\@cosupervisor}{}}{}{\sep cosupervisor \@cosupervisor}
  \sep committee: \@committee \sep meetings: \@meetingdates
  
  \noindent\textbf{5. Courses.} Completed: \@coursestaken \sep Planned: \@coursesplanned

  \noindent\textbf{6. Thesis proposal.}\ifthenelse{\equal{\@program}{PhD}}{\footnote{The thesis proposal is due by month 20 in the PhD program.}}{\footnote{The thesis proposal is due by month 12 in the MScprogram.}} \@thesisproposal

  \noindent\ifthenelse{\equal{\@program}{PhD}}%
  {\textbf{7. Qualifying Examination.}\footnote{The Qualifying Examination is due between
  month 9 and 12 in program, although the Curriculum Committee may grant
  extensions up to month 15 if there is a compelling conflict such as
  fieldwork.} \@qualifyingexamination}%
  {\textbf{7. Qualifying Examination.}\footnote{The qualifying examination is not relevant to the MSc program.}}

  \noindent\textbf{8. Fieldwork.} \@fieldwork

  \noindent\textbf{9. Thesis.} \@thesis

  \noindent\textbf{10. Presentations.} \@presentations

  \noindent\textbf{11. Publications.} \@publications

  \noindent\textbf{12. Awards.} \@awards

  \noindent\textbf{13. Teaching.} \@teaching

  \noindent\textbf{14. Contributions.} \@contributions

  \noindent\textbf{15. Other acomplishments.} \@otheraccomplishments

  \noindent \textbf{16. Filed.}\footnote{The tick boxes mean that the stated
  item is on file in the main office of the Department, or is being provided as
  an attachment to this document.} annual progress report $\Box$ $/$ minutes of
  committee meetings $\Box$ $/$ program form $\Box$ $/$ thesis proposal $\Box$
  $/$ fieldwork $\Box$

  \noindent\textbf{17. Discussion points.} \@discussion

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
