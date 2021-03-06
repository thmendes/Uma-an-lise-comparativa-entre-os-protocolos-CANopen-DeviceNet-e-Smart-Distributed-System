%=============================================================================
% RBCA.cls - estilo de artigo para a Revista Brasileira de Computa��o Aplicada
%
% v0.4 14/03/2011 - vers�o atualizada por Carlos Holbig
%
% Copyright (C) 2011 Carlos Amaral H�lbig
% Curso de Ci�ncia da Computa��o
% Universidade de Passo Fundo
% Passo Fundo, Brasil
%==========================================================================

%==========================================================================
% Identifica��o
%==========================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{RBCA}[13/08/2013 v0.5 Artigo para a Revista RBCA]

%==========================================================================
% Declara��es preliminares
%==========================================================================
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[twoside]{article}
\RequirePackage{times,fancyhdr}

% \renewcommand{\normalsize}{\@setfontsize\normalsize\@xiipt\@xivpt}

%==========================================================================
% Comandos para informa��es adicionais no pre�mbulo
%==========================================================================
\newcommand{\RBCAname}{\mbox{Revista Brasileira de Computa��o Aplicada }}
\newcommand{\RBCAvolume}[1]{\gdef\@RBCAvolume{#1}}
\newcommand{\RBCAnumero}[1]{\gdef\@RBCAnumero{#1}}
\newcommand{\RBCAano}[1]{\gdef\@RBCAano{#1}}
\newcommand{\RBCAmes}[1]{\gdef\@RBCAmes{#1}}
\newcommand{\RBCApaginas}[1]{\gdef\@RBCApaginas{#1}}

%==========================================================================
% Margens e tamanho da p�gina
%==========================================================================
\setlength{\paperwidth}{19cm}\setlength{\paperheight}{29cm}
\setlength{\textwidth}{16cm}\setlength{\textheight}{23cm}
\setlength{\oddsidemargin}{2.5cm}
\setlength{\headheight}{\baselineskip}
\setlength{\topmargin}{3cm}
%\setlength{\headsep}{2cm}\addtolength{\headsep}{-\headheight}
\setlength{\footskip}{1cm}\addtolength{\footskip}{.5\baselineskip}
\addtolength{\topmargin}{-1in}
\addtolength{\oddsidemargin}{-1in}
\setlength{\evensidemargin}{\oddsidemargin}

%==========================================================================
% Defini��es diversas
%==========================================================================
\setlength{\parindent}{1cm}
\setlength{\parskip}{.21cm \@plus \p@}
\newcommand{\abstractinenglishname}{Abstract}
\newcommand{\keywordsportugues}{Palavras-chave}
\newcommand{\keywordsenglishname}{Keywords}

%==========================================================================
% Cabe�alho e rodap�
%==========================================================================
\ps@fancy{
\fancyhead{} \fancyfoot{}
\fancyfoot[R]{\thepage} %\cfoot{}
\fancyfoot[L]{\RBCAname (ISSN 2176-6649), Passo Fundo, v.~\@RBCAvolume, n.~\@RBCAnumero, p.~\@RBCApaginas, \@RBCAmes. \@RBCAano}
}
\renewcommand\footrulewidth{0.4pt}
\renewcommand\headrulewidth{0pt}
\pagestyle{fancy}

%==========================================================================
% T�tulo
%==========================================================================
\renewcommand{\maketitle}{%
	\thispagestyle{empty}%
	\begin{center}
        \noindent{\Large\textbf{\@title}\par}
	{\let\and\\\@author}
	\end{center}
}

%==========================================================================
% Resumo (abstract) e Abstract (englishabstract)
%==========================================================================
\renewenvironment{abstract}{%
        \begin{center}
	\begin{minipage}{14cm}
	{\textbf{\abstractname:}}
}{
        \end{minipage}
	\end{center}
}

\newenvironment{abstractinenglish}{
        \def\abstractname{\abstractinenglishname}
	\begin{abstract}
}{
        \end{abstract}
}

%==========================================================================
% Palavras-chave (keywords) e Keywords (keywordsenglish)
%==========================================================================
\newenvironment{keywords}{
        \def\abstractname{\emph{\keywordsportugues}}
	\begin{abstract}
}{
        \end{abstract}
}

\newenvironment{keywordsenglish}{
        \def\abstractname{\emph{\keywordsenglishname}}
	\begin{abstract}
}{
        \end{abstract}
}

%==========================================================================
% Formata��o das se��es
%==========================================================================
\renewcommand{\section}{%
	\@startsection{section}{1}{0pt}{.49cm}{.21cm}
		      {\reset@font\large\bfseries}
}
\renewcommand{\subsection}{%
	\@startsection{subsection}{2}{0pt}{.42cm}{.07cm}{\reset@font\bfseries}
}
\renewcommand{\subsubsection}{%
	\@startsection{subsubsection}{3}{0pt}{.28cm}{.07cm}
		      {\reset@font\bfseries}
}
\renewcommand{\paragraph}{%
	\@startsection{paragraph}{4}{0pt}{.28cm}{-1em}{\reset@font\itshape}
}

%==========================================================================
% Formata��o das legendas de figuras e tabelas
%==========================================================================
\def\@makecaption#1#2{
        \vspace{\abovecaptionskip}
        \parbox{\textwidth}{\centering{#1:}~#2}% nao remover este `%'
        \vspace{\belowcaptionskip}
}

%==========================================================================
% Formata��o das notas de rodap�
%==========================================================================
\renewcommand\@makefntext[1]{%
       \parbox[t]{\textwidth}{\mbox{\@makefnmark}#1}
}
