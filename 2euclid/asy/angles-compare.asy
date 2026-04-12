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

size(160);

pair A=(0,0);
pair B=2dir(15);

pair C=(0.5,-0.05);
pair D=C+1.5dir(-10);

pair EE=A+1.5dir(15);

draw(EE--1.15B,Arrow);

draw(A--EE,StickIntervalMarker(1,2,blue,dotframe(red)));
draw(C--D,StickIntervalMarker(1,2,blue,dotframe(red)));
label("$C$",A,S);
dot(Label("$D$",black),B,S,red);
label("$A$",C,S);
label("$B$",D,E);
label("$E$",EE,S);
