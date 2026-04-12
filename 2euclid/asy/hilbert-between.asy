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

pair A=(0,0);
pair B=(1,0);
pair C=0.3dir(70);
pair D=2.4C;
pair EE=1.6B-0.6D;
pair F=intersectionpoint(C--EE,A--B);

draw(B--A--D--EE--C);

dot(Label("$A$",black),A,S,Red);
dot(Label("$B$",black),B,S,Red);
dot(Label("$C$",black),C,W,Red);
dot(Label("$D$",black),D,W,Red);
dot(Label("$E$",black),EE,E,Red);
dot(Label("$F$",black),F,S,Red);

