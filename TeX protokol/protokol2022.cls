%	Logo can be changed by replacing file "logo.png"
%
%

\LoadClass[a4paper,onecolumn,12pt]{article}
\usepackage[czech, slovak, english]{babel}
\usepackage[utf8]{inputenc}
\usepackage{calc}
\usepackage{amsmath}
\usepackage{amsfonts}
\usepackage{amssymb}
\usepackage{ifthen}
\usepackage{graphicx} 
\usepackage{xcolor}
\usepackage{tikz}
\usepackage{setspace}  
\usepackage{cite}
\usepackage{hyperref}

\AddToHook{cmd/section/before}{\clearpage}

%\setcounter{page}{0}
\pagenumbering{arabic}
\pagestyle{plain}

% Numbering by section (section.figure)
\numberwithin{equation}{section}
\numberwithin{figure}{section}
\numberwithin{table}{section}

\def\@lang{}
\def\lang #1{\gdef\@lang{#1}}

\AtBeginDocument{
\ifthenelse{\equal{\@lang}{sk}}{
	\def\@figurenaming{Obrázok}
	\def\@tablenaming{Tabuľka}
	\def\@refnaming{Použitá literatúra}
	\def\@contentsnaming{Obsah}
	\def\@authornaming{Vypracoval}
	\def\@measuredon{Merané dňa}
	\def\@turnedinon{Odovzdané dňa}
	\def\@measurementparams{Podmienky merania}
	\def\@contributednaming{Spolupracoval}
	\def\@contributedplural{Spolupracovali}
}

\ifthenelse{\equal{\@lang}{cs}}{
	\def\@figurenaming{Obrazek}
	\def\@tablenaming{Tabulka}
	\def\@refnaming{Použitá literatúra}
	\def\@contentsnaming{Obsah}
	\def\@authornaming{Vypracoval}
	\def\@measuredon{Meřeno dne}
	\def\@turnedinon{Odevzdáno dne}
	\def\@measurementparams{Podmínky meření}
	\def\@contributednaming{Spolupracoval}
	\def\@contributedplural{Spolupracovali}
}

\ifthenelse{\equal{\@lang}{en}}{
	\def\@figurenaming{Figure}
	\def\@tablenaming{Table}
	\def\@refnaming{References}
	\def\@contentsnaming{Contents}
	\def\@authornaming{Author}
	\def\@measuredon{Measured on}
	\def\@turnedinon{Turned in on}
	\def\@measurementparams{Measurement paramteters}
	\def\@contributednaming{Cotributed}
	\def\@contributedplural{Cotributed}
}

	\renewcommand{\figurename}{\@figurenaming}
	\renewcommand{\tablename}{\@tablenaming}
	\renewcommand{\refname}{\@refnaming}
	\renewcommand{\contentsname}{\@contentsnaming}
}

\newcommand{\todo}[1]{
	\color{red}	#1 \\ \noindent
	{\rule{\linewidth}{1mm}}
	\color{black}
}

\hypersetup{
    colorlinks,
    citecolor=black,
    filecolor=black,
    linkcolor=black,
    urlcolor=black
}

\setlength{\textwidth}{\paperwidth-5cm}
\setlength{\textheight}{\paperheight-5cm}
\setlength{\hoffset}{2.5cm-1in} 
\setlength{\voffset}{2.5cm-1in}
\setlength{\oddsidemargin}{0pt} 
\setlength{\evensidemargin}{0pt}
\setlength{\topmargin}{-1.2cm}
\setlength{\headsep}{-\topmargin-\headheight}
\setlength{\marginparsep}{5pt} 
\setlength{\marginparwidth}{2cm}
   


\hfuzz = 1pt
\tolerance = 1000
\widowpenalty = 10000
\clubpenalty = 8000

\def\@autor{}
\def\@autorid{}
\def\@autorr{}
\def\@autorrid{}
\def\@autorrr{}
\def\@autorrrid{}
\def\@autorrrr{}
\def\@autorrrrid{}
\def\@rocnik{}
\def\@obor{}
\def\@skupina{}
\def\@labskup{}
\def\@ucitel{}
\def\@merenodne{}
\def\@odevzdanodne{}
\def\@priprava{}
\def\@opravy{}
\def\@nazev{}
\def\@cislo{}
\def\@predmet{}
\def\@ustav{}
\def\@skola{}
\def\@podmienky{}

\def\autor #1{\def\@autor{#1}}
\def\autorid #1{\def\@autorid{#1}}
\def\rocnik #1{\def\@rocnik{#1}}
\def\obor #1{\def\@obor{#1}}
\def\skupina #1{\def\@skupina{#1}}
\def\labskup #1{\def\@labskup{#1}}
\def\autorr #1{\def\@autorr{#1}}
\def\autorrid #1{\def\@autorrid{#1}}
\def\autorrr #1{\def\@autorrr{#1}}
\def\autorrrid #1{\def\@autorrrid{#1}}
\def\autorrrr #1{\def\@autorrrr{#1}}
\def\autorrrrid #1{\def\@autorrrrid{#1}}
\def\ucitel #1{\def\@ucitel{#1}}
\def\merenodne #1{\def\@merenodne{#1}}
\def\odevzdanodne #1{\def\@odevzdanodne{#1}}
\def\priprava #1{\def\@priprava{#1}}
\def\opravy #1{\def\@opravy{#1}}
\def\nazev #1{\def\@nazev{#1}}
\def\cislo #1{\def\@cislo{#1}}
\def\predmet #1{\def\@predmet{#1}}
\def\ustav #1{\def\@ustav{#1}}
\def\skola #1{\def\@skola{#1}}
\def\podmienky #1{\def\@podmienky{#1}}


\def\hposuna{\hspace*{-2\fboxrule}}
\def\hposunb{\hspace*{-4\fboxrule}}
\def\hposunc{\hspace*{-1\fboxrule}}
\def\hposund{\hspace*{-5\fboxrule}}
\def\vposuna{\vspace*{-2\fboxrule}}
\def\vposunb{\vspace*{-1.25\fboxrule}}
\def\vposunc{\vspace*{+1.25\fboxrule}}

\renewcommand{\maketitle}{
{\setstretch{1.3}
	\thispagestyle{empty}
	\includegraphics[height=2cm]{logo.png}
	
	\begin{center}		
	\vspace*{\fill}
			{\LARGE \@predmet}\\ \vspace*{12pt}
			{\LARGE \textbf{\@cislo \ \@nazev}}
	\vspace*{\fill}
	\end{center}
	
	\begin{tabbing}
		\hspace{150pt}\=\kill
		 \@authornaming : \> \@autor \ (\@autorid) \\ 
		 \ifx\@autorr\empty
		 	
		 \else 
		 	\ifx\@autorrr\empty
		  		\@contributednaming: \> \@autorr \ (\@autorrid) \\ 
		  	\else
		  		\ifx\@autorrrr\empty
		  			\@contributedplural : \> \@autorr \ (\@autorrid)\\
		  							\> \@autorrr (\@autorrrid)\\
		  		\else
		  			\@contributedplural : \> \@autorr \  (\@autorrid)\\
		  							\> \@autorrr \ (\@autorrrid)\\
		  							\> \@autorrrr \ (\@autorrrrid)\\
		  		\fi
		  	\fi
		 \fi
		 \@measuredon : \> \@merenodne \\ 
		 \@turnedinon : \> \@odevzdanodne \\ 
		 \ifx\@podmienky\empty
		 	
		 \else 
		  	\@measurementparams : \> \@podmienky
		 \fi
		 
	\end{tabbing} 	
	
	
}	%% set stretch
\newpage 
}

\catcode`\"=\active
\def"{\bgroup\quotedblbase\def"{\textquotedblleft\egroup}}

%\newcommand{\uv}[1]{\raisebox{-1.3ex}[0ex][0ex]{''}\kern-.1ex#1\kern-.1ex``}

\AtBeginDocument{\catcode`\"=\active} %ihned na zacatku dokumentu se provede
\endinput



%% Definice prikazu pro sazbu jednotek
\DeclareMathAlphabet{\jedn}{OT1}{cmr}{m}{n}


%%
%% End of file `protokol2022.cls'.