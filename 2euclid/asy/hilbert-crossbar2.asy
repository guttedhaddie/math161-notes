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

size(180);

pair A=(0,0);
pair B=(1,0);
pair C=1.5dir(60);
pair D=2dir(25);
pair EE=-1.5B;

draw(C--A--B--C--EE--A);

pair M=0.4EE+0.6C;

draw(A..M..C+(0,0.3){E}..D{dir(25)},Blue);
draw(D--1.2D,Blue,Arrow);

dot(Label("$A$",black),A,S,Red);
dot(Label("$B$",black),B,S,Red);
dot(Label("$C$",black),C,NW,Red);
dot(Label("$I$",black),D,SE,Red);
dot(Label("$D$",black),EE,S,Red);
dot(Label("$M$",black),M,SE,Red);
