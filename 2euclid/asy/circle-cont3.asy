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
import markers;

size(80);

pair O=(0,0);
pair A=1.2dir(100);
pair B=dir(45);
pair C=0.4*A+0.6*B;

draw(C--O--A--B--O);

//draw("$\alpha$",arc(A,dir(46.5),dir(43.5)));

dot(Label("$A$",black),A,W,red);
dot(Label("$B$",black),B,E,red);
dot(Label("$C$",black),C,NE,red);
dot(Label("$O$",black),O,SW,red);
