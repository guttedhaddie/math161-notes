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

size(135);

pair P=(0,1);
pair Q=(0.5,0);

draw((-1.5,0)--(2,0));
label("$\ell$",(2,0),E);
draw((-1.5,1)--(2,1));
label("$m$",(2,1),E);

draw(1.2Q-0.2P--1.3P-0.3Q);

dot(Label("$P$",black),P,SW,red);

draw("$\beta$",arc(P,0.11,0,180*angle(P-Q)/pi,CCW));
draw("$\alpha$",arc(Q,0.11,0,180*angle(P-Q)/pi,CCW));





