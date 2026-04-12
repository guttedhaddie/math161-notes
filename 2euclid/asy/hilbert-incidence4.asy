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

size(0,90);

pair A=(0,0);
pair B=(1,0);
pair C=(0.8,1.1);
pair D=(0.6,0.3);

draw(A--B--C--D--cycle--C);
draw(B--D);

dot(Label("$A$",black),A,S,Red);
dot(Label("$B$",black),B,S,Red);
dot(Label("$C$",black),C,E,Red);
dot(Label("$D$",black),D,NW,Red);
