%=============================================================================
% RBCA.cls - estilo de artigo para a Revista Brasileira de Computação Aplicada
%
% v0.4 14/03/2011 - versão atualizada por Carlos Holbig
%
% Copyright (C) 2011 Carlos Amaral Hölbig
% Curso de Ciência da Computação
% Universidade de Passo Fundo
% Passo Fundo, Brasil
%==========================================================================

%==========================================================================
% Identificação
%==========================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{RBCA}[13/08/2013 v0.5 Artigo para a Revista RBCA]

%==========================================================================
% Declarações preliminares
%==========================================================================
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[twoside]{article}
\RequirePackage{times,fancyhdr}

% \renewcommand{\normalsize}{\@setfontsize\normalsize\@xiipt\@xivpt}

%==========================================================================
% Comandos para informações adicionais no preâmbulo
%==========================================================================
\newcommand{\RBCAname}{\mbox{Revista Brasileira de Computação Aplicada }}
\newcommand{\RBCAvolume}[1]{\gdef\@RBCAvolume{#1}}
\newcommand{\RBCAnumero}[1]{\gdef\@RBCAnumero{#1}}
\newcommand{\RBCAano}[1]{\gdef\@RBCAano{#1}}
\newcommand{\RBCAmes}[1]{\gdef\@RBCAmes{#1}}
\newcommand{\RBCApaginas}[1]{\gdef\@RBCApaginas{#1}}

%==========================================================================
% Margens e tamanho da página
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
% Definições diversas
%==========================================================================
\setlength{\parindent}{1cm}
\setlength{\parskip}{.21cm \@plus \p@}
\newcommand{\abstractinenglishname}{Abstract}
\newcommand{\keywordsportugues}{Palavras-chave}
\newcommand{\keywordsenglishname}{Keywords}

%==========================================================================
% Cabeçalho e rodapé
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
% Título
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
% Formatação das seções
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
% Formatação das legendas de figuras e tabelas
%==========================================================================
\def\@makecaption#1#2{
        \vspace{\abovecaptionskip}
        \parbox{\textwidth}{\centering{#1:}~#2}% nao remover este `%'
        \vspace{\belowcaptionskip}
}

%==========================================================================
% Formatação das notas de rodapé
%==========================================================================
\renewcommand\@makefntext[1]{%
       \parbox[t]{\textwidth}{\mbox{\@makefnmark}#1}
}
