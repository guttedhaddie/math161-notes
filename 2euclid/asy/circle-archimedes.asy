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

size(220,0);

draw(Label("$\ell$",Relative(0.98)),(-1,0)--(10,0));

dot(Label("$A_0$",black),0,S,red);
dot(Label("$A_1$",black),1,S,red);
dot(Label("$A_2$",black),2,S,red);
dot(Label("$A_3$",black),3,S,red);
label("$\cdots$",(4,0),2S);
dot(Label("$B$",black),7,S,red);
dot(Label("$A_N$?",black),7.4,NE,red);

