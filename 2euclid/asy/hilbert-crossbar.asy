settings.tex="lualatex";
defaultpen(fontsize(12pt));

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{unicode-math}
\setmainfont{TeX Gyre Pagella}
\setmathfont{TeX Gyre Pagella Math}
\usepackage[svgnames]{xcolor}
");

import graph;
import markers;

size(120,100,IgnoreAspect);

pair A=(0,0);
pair B=dir(0);
pair C=1.2dir(80);
pair I=1.5*dir(30);

draw(1.3*B--A--1.3*C,Arrows);
draw(A--1.2*I,Arrow);
draw(B--C);

pair M=intersectionpoint(A--I,B--C);

dot(Label("$A$",black),A,S,red);
dot(Label("$B$",black),B,S,red);
dot(Label("$C$",black),C,W,red);
dot(Label("$I$",black),I,SE,red);
dot(Label("$M$",black),M,2dir(80),red);
