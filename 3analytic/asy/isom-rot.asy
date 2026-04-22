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

size(0,125);

xaxis("$x$",red);
yaxis("$y$",red);


real th=85;
real ph=40;

pair O=(0,0);

draw(O--dir(ph),Blue);
draw(O--dir(ph+th),lGreen);

dot(Label("$X=rS_\phi$",black),dir(ph),dir(ph+45),red);
dot(Label("$g(X)=rS_{\theta+\phi}$",black),dir(ph+th),N,red);

draw("$\phi$",arc(O,0.15,0,ph),ArcArrow);
draw("$\theta$",arc(O,0.17,ph,ph+th),ArcArrow);
