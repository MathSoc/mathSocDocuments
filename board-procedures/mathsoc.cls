% mathsoc.cls
% Provides overall stationary and universal commands for
%   documents written by the Mathematics Society of the
%   University of Waterloo.
% 2016-Nov-19 Tristan Potter tristan.potter (at) uwaterloo.ca
% --- Class structure: identification part
% ---
\ProvidesClass{mathsoc}[2016/11/19 version 1.00 MathSoc document] 
\NeedsTeXFormat{LaTeX2e}

% --- Class structure: initialization
% ---
% We don't have anything to do 

% --- Class structure: declaration of options part
% ---
% This class extends the article class
% Read all the documentclass options; pass them to article,
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

% --- Class structure: execution of options part % ---
\ProcessOptions \relax
% --- Class structure: declaration of options part % ---
\LoadClass{article}
\RequirePackage{tocloft}
\RequirePackage{hyperref}
\RequirePackage{titlesec}

% we are heathens and don't use A4 paper
\RequirePackage[papersize={8.5in,11in},margin=1in]{geometry}
\RequirePackage{pdfpages}
\RequirePackage{graphicx}

\RequirePackage[utf8]{inputenc}

%% MATH
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}


\RequirePackage{fancyhdr}
\RequirePackage{enumitem}

\RequirePackage{longtable}
\RequirePackage{booktabs}

%% Font things
\RequirePackage[T1]{fontenc}
\RequirePackage{anyfontsize}
\RequirePackage{lmodern} \normalfont %to load T1lmr.fd

\RequirePackage[normalem]{ulem}

\hypersetup{%
  colorlinks=false,
  linktoc=all
}

% Tranditional Tex commands
\DeclareFontShape{T1}{lmr}{bx}{sc} {<-> ssub * cmr/bx/sc }{}

\titleformat*{\section}{\Large \bfseries \scshape}
\titleformat*{\subsection}{\Large \bfseries \scshape}
\titleformat*{\subsubsection}{\large \bfseries \scshape}

\makeatletter\renewcommand{\@pnumwidth}{9em}\makeatother

\renewcommand{\cftsecnumwidth}{2em}
\renewcommand{\cftsubsecfont}{\rmfamily}
\renewcommand{\cftsubsecnumwidth}{3em}
\renewcommand{\cftsubsubsecfont}{\rmfamily}
\renewcommand{\cftsubsubsecindent}{2.5em}
\renewcommand{\cftsubsubsecnumwidth}{3.4em}
\renewcommand{\familydefault}{\rmdefault}

% Formatting TOC
\setcounter{tocdepth}{2}

% Header stuff
\pagestyle{fancy}
\fancyhead{}

\newcommand{\logo}{../logo.png}
\newcommand{\defvar}[2]{\def#1##1{\gdef#2{##1}}#1{}}

% Macros
\newcommand{\HRule}{\rule{\linewidth}{0.4mm}}
\newcommand{\hlabel}{\phantomsection\label}

%% Header stuff
\lhead{}
\chead{}
\rhead{The Mathematics Society}

