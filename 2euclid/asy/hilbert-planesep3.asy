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

size(120,75,IgnoreAspect);

path ell=-dir(20)--dir(20);

pair A=0.7dir(50);
pair B=0.5*dir(290);
pair C=dir(220);

draw(Label("$\ell$",Relative(0.8)),ell);
draw(A--B--C--cycle);

dot(Label("$A$",black),A,E,Red);
dot(Label("$B$",black),B,E,Red);
dot(Label("$C$",black),C,W,Red);