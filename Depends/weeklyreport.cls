\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{weeklyreport}[2023/09/09 Weekly Report Document Class for Aerodynamics Group of Shanghai University]
\LoadClass[a4paper,zihao=5,UTF8]{ctexart}

\newCJKfontfamily\huawenxingkai{华文行楷.ttf}% 华文行楷
[
	Path={./Depends/},
	UprightFont=*,
	AutoFakeBold=5
]

\RequirePackage{geometry}
\geometry{
	top=2.54 cm,
	bottom=2.54 cm,
	left=3.18 cm,
	right=3.18 cm
}

\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\lhead{\includegraphics[scale=1]{./Depends/SHU-Logo.jpg}}
\chead{\zihao{4}\huawenxingkai{现代飞行器空气动力学研究中心}}
\cfoot{\thepage}

\RequirePackage{paracol}
\setcolumnwidth{0em/1em,3.11cm/1em,11.53cm/1em,0cm}

\RequirePackage{caption}
\captionsetup[table]{position=above}

\newcommand\leftandrightcells[2]
{
	\begin{nthcolumn*}{0}
		\setlength{\parindent}{0.45em}
		{\rule{\dimexpr(0\columnwidth+0.5\columnsep+0.09\columnseprule)}{0.4pt}}
	\end{nthcolumn*}
	\begin{nthcolumn}{1}
		{\noindent\rule{\dimexpr(\columnwidth+0.95\columnsep+0.85\columnseprule)}{0.4pt}}
		\centering

		#1
	\end{nthcolumn}

	\begin{nthcolumn}{2}
		{\noindent\rule{\dimexpr(\columnwidth+0.45\columnsep+0\columnseprule)}{0.4pt}}

		#2
	\end{nthcolumn}
}

\newenvironment{weeklyreport}[1]
{
	\phantom{用来空行的幻影文字}

	\captionof*{table}{\zihao{-4} 本科学习情况汇报表}

	\begin{paracol}{4}
		\setlength{\parindent}{2em}
		\setlength\columnseprule{0.4pt}

		\leftandrightcells
		{
			姓名
		}
		{
			\noindent
			\makebox[3.5cm]{\@author} % 此处填写姓名
			\rule[-16pt]{0.4pt}{32pt}
			\makebox[3cm]{日期}
			\rule[-16pt]{0.4pt}{32pt}
			\makebox[3.5cm]{\@date} % 此处填写日期
		}

		#1
}
{
		\leftandrightcells{}{}
	\end{paracol}
	
}

\newcommand\learningcontents[1]
{
	\leftandrightcells
	{
		本周学习内容

		（包括上课情况、阅读课外辅导书籍的情况，字数不少于500字）
	}
	{
		#1
	}
}

\newcommand\readingcontents[1]
{
	\leftandrightcells
	{
		课外读物阅读情况或参与科研文献阅读情况

	 	（字数不少于200字）
	}
	{
		#1
	}
}

\newcommand\problemsandsolutions[1]
{
	\leftandrightcells
	{
		存在的问题和拟解决的方案
	}
	{
		#1
	}
}

\newcommand\plansnextweek[1]
{
	\leftandrightcells
	{
		下周研习计划

	 	（计划不少于5条）
	}
	{
		#1
	}
}

\newcommand\achievementsandexperiences[1]
{
	\leftandrightcells
	{
		取得的结果或学习心得分享
	}
	{
		#1
	}
}

\newcommand\Ipromisenofoolingborlying
{
	\centering{注：此表请如实填写，认真地填写。}
}