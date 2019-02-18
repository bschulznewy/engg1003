\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lab}[2016/03/12 A project class for ELEC1310 2019 modified for ENGG1003]


\newif\if@enableCalculations\@enableCalculationstrue
\DeclareOption{nocalc}{
  \@enableCalculationsfalse
}
\DeclareOption{calc}{
  \@enableCalculationstrue
}

\DeclareOption{oldvoltagedirection}{
\PassOptionsToPackage{circuitikz}{oldvoltagedirection}
}


\newif\if@printSolutions\@printSolutionsfalse
\DeclareOption{solutions}{
  \@printSolutionstrue
}
\DeclareOption{nosolutions}{
  \@printSolutionsfalse
}

% all other options are passed to the article class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\ExecuteOptions{12pt,arabic,calc}

\ProcessOptions\relax

% set base class
\LoadClass{article}

\RequirePackage{parskip}

%% load required packages:

\RequirePackage{needspace} % to add extra space
\RequirePackage{fancyhdr} % to redo the headings
\RequirePackage{geometry}

%\RequirePackage{totcount} % to allow point counting

\RequirePackage{siunitx}
\DeclareSIUnit\var{VAR}
\DeclareSIUnit[number-unit-product = {}]\rad{rad}
\sisetup{add-integer-zero,zero-decimal-to-integer}

% special si commands that convert the number to a proper format.
\newcommand{\convertSI}[3][]{\SI[scientific-notation=engineering,exponent-to-prefix,round-mode=places,round-precision=2,#1]{#2}{#3}} 
\newcommand{\crSI}[3]{
\ifthenelse{\equal{#1}{}}
{ \convertSI{#2}{#3}\jm} 
{\ifthenelse{\equal{#2}{}}
{\ensuremath{\convertSI{#1}{#3}}}
{\ensuremath{\convertSI{#1}{#3} \convertSI[retain-explicit-plus,explicit-sign=+]{#2}{#3}\jm}}}
}
\newcommand{\cpSI}[3]{\convertSI{#1}{#3} \angle \convertSI[exponent-to-prefix=false,scientific-notation=fixed,fixed-exponent=0]{#2}{\degree}}
\newcommand{\convertnum}[2][]{\num[round-mode=places,round-precision=2,scientific-notation=engineering,#1]{#2}}

\newcommand{\cosSI}[5][]{\convertSI[#1]{#2}{#5} \cos\left(\convertSI{#4}{\rad\per\second}\times t \convertSI[explicit-sign=+,exponent-to-prefix=false]{#3}{\degree}\right) }


\RequirePackage[intlimits]{amsmath} % equation and environments. options:  intlimits :  puts the limits of an intergral on top bottom 
\RequirePackage{amssymb,amsthm} % adds math symbols: amsfonts, amsthm
%% for figures:
\RequirePackage[inline]{enumitem}
\RequirePackage{import}      % allows special import functions
\RequirePackage[table]{xcolor}	% to define colous
\RequirePackage{graphicx}     % important for
\RequirePackage{tikz}  % allows tikz and pgf images
\RequirePackage{pgfplots} % allows pgf plots
\usepgfplotslibrary{units}
\pgfplotsset{compat=newest}
\RequirePackage[siunitx,american voltages, american currents]{circuitikz}

\usetikzlibrary{positioning,fit, intersections, shapes, calc, arrows, matrix, automata, backgrounds}

\RequirePackage{ifthen} % replace at one point with etoolbox
\RequirePackage{booktabs}
\usepackage{tabularx}
\usepackage{longtable}
\usepackage{array} % for advanced column specification: use >{\command} for commands executed right before each column element and <{\command} for commands to be executed right after each column element 

\RequirePackage{pdfpages}
%\RequirePackage{cleveref}
%\crefname{figure}{Figure}{Figures}

\def\@defautlRequiredSpace{12}
\newcommand{\setDefaultRequiredSpace}[1]{\def\@defautlRequiredSpace{#1}}

%% Define needed parts as course name, group number, format name, etc.
% course name
\def\@courseName{Introduction to Procedural Programming} 
\def\@courseNameshort{ENGG1003}
\newcommand{\setcourseName}[2]{\def\@courseName{#1} \def\@courseNameshort{#2}}

% type 
\def\@typeName{Project: } 
\newcommand{\settypeName}[1]{\def\@typeName{#1}}

%\def\@date{Semester 2, \the\year}
\def\@date{\today}
\newcommand{\setdate}[1]{\def\@date{#1}}

\def\@school{SCHOOL OF ELECTRICAL ENGINEERING\\and\\COMPUTING}
\newcommand{\setschool}[1]{\def\@school{#1}}

%% add calculation capabilities to the package for easy variation of questions
\if@enableCalculations
\usepgflibrary{fpu}

\newcommand*{\activateCalc}{\pgfkeys{pgf/fpu=true, /pgf/fpu/output format=sci}}
\newcommand*{\deactivateCalc}{\pgfkeys{pgf/fpu=false}}
\newcommand{\setparam}[2]{\pgfmathsetmacro{#1}{#2}} % sets a local parameter within the question
\newcommand{\calcnum}[2][]{\pgfmathparse{#2}\convertnum[#1]{\pgfmathresult}} % to calculate numbers and typeset them properly
\newcommand{\calcSI}[3][]{\pgfmathparse{#2}\convertSI[#1]{\pgfmathresult}{#3}}
\newcommand{\calccrSI}[3]{
\ifthenelse{\equal{#1}{}}
{ \calcSI{#2}{#3}\jm} 
{\ifthenelse{\equal{#2}{}}
{\ensuremath{\calcSI{#1}{#3}}}
{\ensuremath{\calcSI{#1}{#3} \calcSI[retain-explicit-plus,explicit-sign=+]{#2}{#3}\jm}}}
}
\newcommand{\calccpSI}[3]{\ensuremath{\calcSI{#1}{#3} \angle \calcSI[,exponent-to-prefix=false,scientific-notation=fixed,fixed-exponent=0]{#2}{\degree}}}

\fi

% set margins
\reversemarginpar
 \newgeometry{
 left=32mm,
 right=20mm,
 top=18mm,
 headsep = 6mm,
 headheight=5mm,
 bottom=20mm,
 nomarginpar,
 %showframe
 }

%\resetHeadWidth

% Headers
\usepackage{lastpage}
\usepackage{hyperref}

\pagestyle{fancy}
%\makeatletter
%\newcommand{\resetHeadWidth}{\fancy@setoffs}
%\makeatother


%% setting up the headings
\fancyheadoffset[L]{1.5cm}
\fancyheadoffset[R]{0.5cm}
\renewcommand{\headrulewidth}{0pt}

\rhead{\@courseNameshort  - \@courseName}
\lfoot{}
\cfoot{Page \thepage{} of \pageref{LastPage}}
\rfoot{\@author}
\if@printSolutions
\lhead{\textcolor{red}{Solutions: }\@typeName \@title, \@date}
\else
\lhead{\@typeName \@title, \@date}
\fi
\pagestyle{fancy}


%% some command definitions
% define math breaks etc
\newlength{\mathindent}
\setlength\mathindent{0.5cm} % specity width
\newcommand{\mathbreak}[1][1]{\\ &\hspace{#1 \mathindent}}

\newcommand{\jm}{j}

% define the exponent as operator 
\DeclareMathOperator{\e}{e}

\newcommand{\Int}[4]{\int_{#1}^{#2} #3 \; \mathrm{d}#4}
\newcommand{\Dif}[2]{\frac{\mathrm{d}#1}{\mathrm{d}#2}}

\renewcommand{\maketitle}{
  \begin{center}
    {\LARGE \textbf{\@title} \par}
    \if@printSolutions
    \textcolor{red}{Solutions: } \@author
    \else
    \@author
    \fi
  \end{center}
}

\theoremstyle{definition}
\newtheorem{exercise}{Exercise}

\if@printSolutions
 \newcommand{\answer}[2][0.1]{{\color{red}\noindent \textbf{\@solutionTitle} \\#2}}
 \newcommand{\answertext}[2][]{{\color{red}#2}}
\else
 \newcommand{\answer}[2][0.1]{\vspace{#1cm}}
 \newcommand{\answertext}[2][]{#1}
\fi

\usepackage{caption} % more control over captions, also allows use of \ContinuedFloat
\usepackage{subcaption} % allow usage of subfigure environment, subcaption, phantomcaption

\usepackage{listings}
\usepackage{xcolor}
\usepackage{courier}

\definecolor{mGreen}{rgb}{0,0.6,0}
\definecolor{mGray}{rgb}{0.5,0.5,0.5}
\definecolor{mPurple}{rgb}{0.8,0,0.82}
\definecolor{backgroundColour}{rgb}{0.95,0.95,0.92}
\definecolor{funcC}{rgb}{0.9, 0.0, 0.0}
\definecolor{flowControl}{rgb}{0.1, 0.1, 0.9}
\definecolor{keywordCol}{rgb}{0.2, 0.4, 0.6}

\lstdefinestyle{CStyle}{
    language=C,
    keywordstyle=\color{keywordCol},
    deletekeywords={for,while,do,if},
    morecomment=[l]{//},
    morecomment=[s]{/*}{*/},
    morestring=[s]{"}{"},
    backgroundcolor=\color{backgroundColour},   
    commentstyle=\color{mGreen},
    numberstyle=\tiny\color{mGray},
    stringstyle=\color{mPurple},
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=3,
    classoffset=1,
    morekeywords={printf,scanf},keywordstyle=\color{funcC},
    classoffset=2,
    morekeywords={for,while,do,if},
    keywordstyle=\color{flowControl},
    classoffset=0
}

\lstset{basicstyle=\ttfamily}
\lstset{framextopmargin=50pt,frame=bottomline}
