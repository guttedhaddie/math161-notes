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

size(110,0);

pair A=(0,0);
pair B=1.2dir(0);
pair C=0.8dir(55);
pair I=0.7dir(25);

draw(1.3*B--A--1.5*C,Arrows);
//draw(A--1.2*I,Arrow);
//draw(B--C);

//pair M=intersectionpoint(A--I,B--C);

dot(Label("$A$",black),A,SW,Red);
dot(Label("$B$",black),B,S,Red);
dot(Label("$C$",black),C,dir(60+90),Red);
dot(Label("$I$",black),I,SE,Red);
//dot(Label("$M$",black),M,2dir(80),Red);
