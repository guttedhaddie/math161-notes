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

size(140);

pair A=(0,2);
pair B=(-0.75,0);
pair C=-B;

label("$A=A'$",A,NE);
label("$B=C'$",B,S);
label("$C=B'$",C,S);
draw(B--C);
draw(B--A--C,blue,StickIntervalMarker(2,2,blue,dotframe(red)));

draw(arc(B,B+0.2unit(A-B),B+0.2unit(C-B),CW),lGreen,StickIntervalMarker(1,1,lGreen));
draw(arc(C,C+0.2unit(B-C),C+0.2unit(A-C),CW),lGreen,StickIntervalMarker(1,1,lGreen));
draw(arc(A,A+0.2unit(B-A),A+0.2unit(C-A)),Magenta);