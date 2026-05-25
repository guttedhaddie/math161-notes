settings.tex="lualatex";
defaultpen(fontsize(12pt));

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{unicode-math}
\setmainfont{TeX Gyre Pagella}
\setmathfont{TeX Gyre Pagella Math}
\usepackage[svgnames,x11names]{xcolor}
");

import x11colors;
pen lGreen=rgb("00a000");

import graph;

size(80);

filldraw(box((0,0),(1,1)),lightblue);
for(int i=0; i<=1; ++i){
for(int j=0; j<=1; ++j){
	draw(shift((0.25+i/2,0.25+j/2))*scale(0.4)*unitcircle);
	}
	}