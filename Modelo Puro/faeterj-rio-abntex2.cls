%  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
%  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
% Este modelo foi personalizado de acordo com as determinações da FAETERJ-Rio para Trabalhos de Conclusão de Curso (TCC)
%
%   Criado por: Filipe Rodrigues Cardoso da Silva, em Janeiro de 2018.
%
%   Este modelo se destina aos alunos da FAETERJ-Rio como uma opção para a criação da parte escrita do Trabalho de Conclusão de Curso
%  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
%  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


%% ----------------------------------- Definições da Classe --------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{faeterj-rio-abntex2}[2018/09/22 Modelo da FAETERJ-Rio baseado em abnTeX2]

\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{abntex2}
}
\ProcessOptions\relax
\LoadClass{abntex2}




% -- DEFINIÇÕES DE MARGENS ---  
\usepackage{geometry}

\geometry{
	a4paper,
	left=3cm,
	top=3cm,
	right=2cm,
	bottom=2cm,
	headsep=1cm, 
	footskip=2cm
}
% -----------------------------------------------------

% ------------ ESTILO DE PAPEL, FONTE E IDIOMA -------------------

\usepackage{helvet}  										% Usa a fonte Arial	
\renewcommand{\familydefault}{\sfdefault}		% Usar fonte SansSerifa como padrão
\usepackage[T1]{fontenc}								% Selecao de codigos de fonte.
\usepackage[utf8]{inputenc}							% Codificacao do documento (conversão automática dos acentos)
\usepackage{lastpage}									% Usado pela Ficha catalográfica
\usepackage{indentfirst}									% Indenta o primeiro parágrafo de cada seção.
\usepackage{color}											% Controle das cores
\usepackage{graphicx}									% Inclusão de gráficos e figuras
\usepackage{microtype} 									% para melhorias de justificação
\usepackage{lscape}
\usepackage{multicol,multirow}

% -----------------------  REDIFINIÇÃO DAS FONTES  ----------------------------

\makeatletter 
\renewcommand\Large{\@setfontsize\Large{12pt}{12}}
\renewcommand\large{\@setfontsize\large{12pt}{12}}
\renewcommand\LARGE{\@setfontsize\LARGE{12pt}{12}}
\renewcommand\huge{\@setfontsize\huge{12pt}{12}}
\renewcommand\Huge{\@setfontsize\Huge{12pt}{12}}
\renewcommand\HUGE{\@setfontsize\HUGE{12pt}{12}}
\renewcommand\small{\@setfontsize\small{10pt}{10}}
\renewcommand{\ABNTEXchapterfont}{\bfseries}
\renewcommand{\ABNTEXsubsectionfont}{}
\makeatother
\setlength{\ABNTEXsignwidth}{11cm}

%% -------------- ELEMENTOS APENAS PARA O MODELO ---------------------------
\usepackage{lipsum}										% para geração de Lorem Ipsum




% --------------------------------------	CITAÇÕES  --------------------------------------


\usepackage[brazilian,hyperpageref]{backref}	 % Paginas com as citações na bibl
\usepackage[alf]{abntex2cite}	% Citações padrão ABNT
\usepackage{url} 

\makeatletter
\g@addto@macro{\UrlBreaks}{\UrlOrds} 				% Quebrar Links de Sites na página
\makeatother

% ---
% Configurações do pacote backref
% Usado sem a opção hyperpageref de backref
\renewcommand{\backrefpagesname}{Citado na(s) página(s):~}
% Texto padrão antes do número das páginas
\renewcommand{\backref}{}
% Define os textos da citação
\renewcommand*{\backrefalt}[4]{
	\ifcase #1 %
		Nenhuma citação no texto.%
	\or
		Citado na página #2.%
	\else
		Citado #1 vezes nas páginas #2.%
	\fi}%
% ---

% ----------------------------------------------------------------------------------------------------------------------
% 							 					FIM	DAS 	CITAÇÕES
% ----------------------------------------------------------------------------------------------------------------------





% ----------------------------------------------------------------------------------------------------------------------------------------
% ---------  FAZ A LEITURA DAS INFORMAÇÕES CONTIDAS NO ARQUIVO info.tex ---------  
% ----------------------------------------------------------------------------------------------------------------------------------------
\include{INFO}


% ----------------------------------------------------------------------------------------------------------------------------------------
%											CONFIGURAÇÃO DO PDF DO TRABALHO
% ----------------------------------------------------------------------------------------------------------------------------------------

% alterando o aspecto da cor azul
\definecolor{blue}{RGB}{41,5,195}

% informações do PDF
\makeatletter
\hypersetup{
     	%pagebackref=true,
		pdftitle={\@title},
		pdfauthor={\@author},
    		pdfsubject={\imprimirpreambulo},
	    pdfcreator={LaTeX with abnTeX2},
		pdfkeywords={abnt}{latex}{abntex}{abntex2}{trabalho acadêmico},
		colorlinks=true,       		% false: boxed links; true: colored links
    		linkcolor=blue,          	% color of internal links
    		citecolor=black,        	% color of links to bibliography
    		filecolor=magenta,      		
		urlcolor=blue,              % color of file links
		bookmarksdepth=4
}
\makeatother

% O tamanho do parágrafo é dado por:
\setlength{\parindent}{1.5cm}

% Controle do espaçamento entre um parágrafo e outro:
\setlength{\parskip}{0.2cm}  % tente também \onelineskip


% ----------------------------------------------------------------------------------------------------------------------------------------
% 													COMPILA O ÍNDEX DO TRABALHO
% ----------------------------------------------------------------------------------------------------------------------------------------


\makeindex


% ----------------------------------------------------------------------------------------------------------------------------------------
% 													FORMATA A CAPA DO TRABALHO
% ----------------------------------------------------------------------------------------------------------------------------------------

\renewcommand{\imprimircapa}{
  \begin{capa}
    \begin{center}
    		\Large \textbf{\imprimirinstituicao}
    		{
    			\vspace*{\fill}
    		}
    
    \vspace*{1cm}{\imprimirautor}

    \vfill
    
   \imprimirtitulo
   
    \vfill
    
    {\imprimirlocal}

    {\imprimirdata}
    
    \vspace*{1cm}
     \end{center}
  \end{capa}
}

% ----------------------------------------------------------------------------------------------------------------------------------------
% 											FORMATA A FOLHA DE ROSTO DO TRABALHO
% ----------------------------------------------------------------------------------------------------------------------------------------

\makeatletter

\renewcommand{\folhaderostocontent}{
\begin{center} {\imprimirautor}   
    \vspace*{1cm}
    


\vspace*{\fill}\vspace*{\fill}

\begin{center}
\ABNTEXchapterfont\imprimirtitulo
\end{center}

\vspace*{\fill}

\abntex@ifnotempty{\imprimirpreambulo}{%
  \hspace{.45\textwidth}
  \begin{minipage}{.5\textwidth}
  	\begin{small}
  		\SingleSpacing
 		\imprimirpreambulo
  		\\\imprimirorientadorRotulo~\imprimirorientador\
 	\end{small}
  \end{minipage}%
  \vspace*{\fill}
}%

\vspace*{\fill}


{\imprimirlocal}

\par

{\imprimirdata}
\vspace*{1cm}
\end{center}
}

\makeatother

% ----------------------------------------------------------------------------------------------------------------------------------------
% 											FIM DAS PERSONALIZAÇÕES DA FAETERJ-Rio
% ----------------------------------------------------------------------------------------------------------------------------------------

