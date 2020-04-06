% Laurent GOUZON (2020)

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cned}[Worksheet for CNED exams]

\LoadClass[a4paper, 11pt]{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage[french]{babel}
\RequirePackage[T1]{fontenc}
\RequirePackage{amsmath, amssymb, graphicx}
\RequirePackage[margin=2cm]{geometry}
\RequirePackage{multirow, setspace}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{everypage, tikzpagenodes}

\def\@worksubject{X}
\def\@workid{XX00}
\def\@worknumber{0}
\def\@worklvnumber{0}
\newcommand{\work}[3]{
  \gdef\@workid{#1}
  \gdef\@worksubject{#2}
  \gdef\@worknumber{#3}
}
\newcommand{\worklv}[1]{\gdef\@worklvnumber{#1}}

\def\@studentid{00000000}
\def\@studentfirstname{Jean}
\def\@studentlastname{Dupont}
\def\@studentaddress{Paris}
\def\@studentcountry{France}
\newcommand{\student}[5]{
  \gdef\@studentid{#1}
  \gdef\@studentlastname{#2}
  \gdef\@studentfirstname{#3}
  \gdef\@studentaddress{#4}
  \gdef\@studentcountry{#5}
}

\setlength{\tabcolsep}{0.75em}
\renewcommand{\arraystretch}{1.15}
\newcommand{\tsquare}{\makebox[0pt][l]{$\square$}\raisebox{.15ex}{\hspace{0.1em}$\checkmark$}}

\renewcommand{\maketitle}{
  \begin{titlepage}
    \fontfamily{phv}\selectfont\noindent

    \begin{tabular}{p{0.3\linewidth}|p{0.55\linewidth}|}
      \cline{2-2}
      \bigskip
      \multirow{6}{*}{\includegraphics[width=0.9\linewidth]{cned.png}}
      & \vspace{0.05em}\centerline{\colorbox{Gray}{\bfseries\Large{Références du devoir}}} \\
      & \textbf{Matière:}~\@worksubject                                     \\
      & \textbf{Code de la matière:}~\@workid                               \\
      & \textbf{N\degres~du devoir:}~\@worknumber~\footnotesize{\itshape(tel qu'il
      figure dans le fascicule devoirs)}                                    \\
      & \textbf{Pour les devoirs de langues étrangères, cochez:}            \\
      & \quad\if\@worklvnumber1 $\tsquare$ \else $\square$\fi~LV1
      \quad\if\@worklvnumber2 $\tsquare$ \else $\square$\fi~LV2
      \quad\if\@worklvnumber3 $\tsquare$ \else $\square$\fi~LV3\vspace{0.1em}\\
      \cline{2-2}
    \end{tabular}

    \vspace{2em}
    \fbox{\begin{minipage}[t]{0.9\linewidth}
      \medskip
      \centerline{\colorbox{Gray}{\bfseries\Large{Vos coordonnées}}}

      \bigskip\quad
      \textbf{Indicatif:}~\@studentid

      \medskip\quad
      \textbf{Nom:}~\textsc{\@studentlastname}

      \medskip\quad
      \textbf{Prénom:}~\@studentfirstname

      \medskip\quad
      \textbf{Ville de résidence:}~\@studentaddress

      \medskip\quad
      \textbf{Pays}~\small{\itshape(si vous ne résidez pas en France)}:~\textsc{\@studentcountry}
      \medskip
    \end{minipage}}

    \bigskip
    \small{\itshape Saisissez les différentes informations demandées puis commencez à
    saisir votre devoir en page 2.}

    \bigskip
    \hrulefill
    \bigskip
    \begin{spacing}{1.75}
      \textbf{\large Nom du professeur correcteur:}

      \textbf{\large Note:}

      \textbf{\large Observations générales du correcteur:}
      \vfill

      \hrulefill
    \end{spacing}
  \end{titlepage}

  \setcounter{page}{2}
  \newgeometry{top=2cm,bottom=2cm,right=5cm,left=2cm}
  \usetikzlibrary{calc}
  \AddEverypageHook{
    \tikz[remember picture, overlay]{\draw ($(current page text area.north east)+(1em, 0pt)$)
    -- ($(current page text area.south east)+(1em, 0pt)$);}
  }

  {\noindent
  \footnotesize{\textit{Votre texte passera automatiquement à la ligne pour laisser
  une marge au correcteur. La marge est obligatoire sur chaque feuille, ne pas modifier.}}

  \bigskip\fontfamily{phv}\selectfont
  \Large{\bfseries Commencez à saisir votre devoir ci-dessous:}}
  \vspace{2em}
  \hrule
  \vspace{1.5em}
}
