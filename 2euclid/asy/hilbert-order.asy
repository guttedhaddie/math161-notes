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

size(90);

real th=17;

pair A=(0,0);
pair B=dir(th);
pair C=1.3dir(th);

draw(-0.4dir(17)--1.9dir(th),Arrows);

dot(Label("$A$",Black),A,S,Red);
dot(Label("$B$",Black),B,S,Red);
dot(Label("$C$",Black),C,S,Red);
//dot(Label("$D$",Black),D,S,Red);
//dot(Label("$E$",Black),EE,S,Red);
