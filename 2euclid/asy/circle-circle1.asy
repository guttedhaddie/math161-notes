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

size(130);

draw(unitcircle);

pair O=(0,0);
pair A=dir(100);
pair B=dir(30);
pair C=dir(30+180);
pair P=dir(260);

draw(arc(O,B,A),blue+linewidth(1));
draw(arc(O,A,B),lGreen+linewidth(1));

draw(C--B,NW);
draw(A--B,SW);

draw(A--P--B);
draw(A--(0,0));

dot(Label("$A$",black),A,NW,red);
dot(Label("$B$",black),B,NE,red);
dot(Label("$C$",black),C,SW,red);

dot(Label("$P$",black),P,S,red);

dot(Label("$O$",black),(0,0),SE,red);

