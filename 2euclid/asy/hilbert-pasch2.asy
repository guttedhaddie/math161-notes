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

size(120,50,IgnoreAspect);

pair A=(0,0);
pair B=(1,-0.1);
pair C=dir(60);

draw(A--B--C--cycle);

path ell=-0.1(B+C)--0.7*(B+C);

draw(Label("$\ell$",Relative(1)),ell,Blue);

pair M=intersectionpoint(ell,B--C);

pair I=0.25A+0.75M;

dot(Label("$A$",black),A,NW,Red);
dot(Label("$B$",black),B,NE,Red);
dot(Label("$C$",black),C,NW,Red);
dot(M,Red);
dot(Label("$I$",black),I,SE,Red);
