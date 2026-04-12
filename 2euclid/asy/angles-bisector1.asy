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

size(120);

pair A=(-1,0);
pair B=(1,0);
pair D=(1.2,2.5);
pair C=(-1.2,2.5);

pair M=intersectionpoint(A--D,B--C);

draw(C--A--B--D);
draw(B--C,dashed);
draw(A--D,dashed);

draw(arc(A,A+0.25*unit(B-A),A+0.25*unit(D-A)),StickIntervalMarker(1,1,lGreen));
draw(arc(B,B+0.25*unit(C-B),B+0.25*unit(A-B)),StickIntervalMarker(1,1,lGreen));

dot(Label("$A$",black),A,SW,Red);
dot(Label("$B$",black),B,SE,Red);
dot(Label("$C$",black),C,SW,Red);
dot(Label("$D$",black),D,SE,Red);
dot(Label("$M$",black),M,2N,Red);




