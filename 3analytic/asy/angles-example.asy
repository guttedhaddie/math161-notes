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

size(140);

pair A=(0,0);
pair B=dir(30);
pair C=1.3dir(150);

draw(1.3B--A--1.3C,Arrows);

draw(A--0.45*(B-A),Magenta+linewidth(1));

draw("$\theta$",arc(A,0.45*unit(B-A),0.3*unit(C-A),CCW),Blue+linewidth(1),ArcArrow);
draw("$2\pi-\theta$",arc(A,0.35*unit(C-A),0.35*unit(B-A),CCW),lGreen+linewidth(1),ArcArrow);

dot(Label("$B$",black),A,S,red);
dot(Label("$A$",black),B,S,red);
dot(Label("$C$",black),C,S,red);
