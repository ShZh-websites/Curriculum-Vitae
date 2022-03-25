\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{common}
\LoadClass[11pt]{article}

\RequirePackage{xltxtra}        % Some general improvements
\RequirePackage{xifthen}        % Use xifthen
\RequirePackage{hyperref}       % Use hyperlink for email and url
\RequirePackage{fontawesome}    % Use fontawesome
\RequirePackage{roboto}         % Roboto as sans font
\RequirePackage{XCharter}       % XCharter as serif-sans font
\RequirePackage{titlesec}       % Set title style
\RequirePackage{enumitem}       % Set list items
\RequirePackage[super]{nth}     % Set ordinal
\RequirePackage{fancyhdr}       % Set footer note
\RequirePackage{xcolor}         % Set footer note's color
\RequirePackage[
    a4paper,
	left=0.8in,
	right=0.8in,
	top=0.55in,
	bottom=0.7in,
	nohead
]{geometry}

% General styles
\pagenumbering{gobble}          % suppress displaying page number
\setlength{\parindent}{0pt}     % disable indent globally
\hypersetup{hidelinks}
% Page styles
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
% List styles
\setlist{noitemsep}            % removes spacing from items but leaves space around the whole list
\setlist[itemize]{topsep=0.25em, leftmargin=1.5pc}
\setlist[enumerate]{topsep=0.25em, leftmargin=1.5pc}
% Section title style
\titleformat{\section}         % Customise the \section command 
    {\sffamily\Large\scshape\raggedright} % Make the \section headers large (\Large), small capitals (\scshape) and left aligned (\raggedright)
    {}{0em}{}                    % Can be used to give a prefix to all sections, like 'Section ...'
    [\titlerule]                 % Inserts a horizontal line after the heading
\titlespacing*{\section}{0cm}{*1.8}{*1.8}
% Subsection title style
\titleformat{\subsection}
    {\large\raggedright}
    {}{0em}{}
\titlespacing*{\subsection}{0cm}{*1.8}{*0.6}

% Style of my name
\newcommand{\name}[1]{
    {\sffamily\centerline{\Huge{#1}}}
    \vspace{2ex}
}

% Information below my name
\newcommand{\basicInfo}[1]{
    \centerline{\sffamily\large{#1}}
    \vspace{1.5ex}
}
% External icon and link
\newcommand{\email}[1]{\href{mailto:#1}{\faEnvelope\ #1}}
\newcommand{\homepage}[2][]{ 
    \ifthenelse{\isempty{#1}}%
        {\href{#2}{\faHome\ #2}}
        {\href{#2}{\faHome\ #1}}
}
\newcommand{\github}[2][]{
    \ifthenelse{\isempty{#1}}%
        {\href{#2}{\faGithub\ #2}}
        {\href{#2}{\faGithub\ #1}}
}
\newcommand{\linkedin}[2][]{ 
    \ifthenelse{\isempty{#1}}%
        {\href{#2}{\faLinkedin\ #2}}
        {\href{#2}{\faLinkedin\ #1}}
}

% Education section
\newcommand{\educationsubsection}[5]{%
    \subsection[#1]{\textbf{#1}, #2 \hfill #3}
    \par #4 \hfill #5%
}
    
% Define my projects
\newcommand{\projectsubsection}[4]{%
    \subsection[#1]{
        {\href{#2}{\faGithub\ #1}} 
        \hspace{0.1em} \faStarO\ #3 
        \hfill #4}%
}
% Define role below my project
\newcommand{\role}[2]{
    {\par \textit{#1} | #2 \par}
    \vspace{0.85ex}
}
% Define awards
\newcommand{\datedline}[2]{
  {\par #1 \hfill #2 \par}
}
\newcommand{\award}[3]{
    \datedline{#1}{#2} 
    \vspace{0.5ex}
    #3
    \vspace{0.85ex}
}