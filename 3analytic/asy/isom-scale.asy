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

size(140,0);

real t=0.4;

pair O=(0,0);
pair Q=dir(-10);
pair gQ=dir(70);
pair X=t*Q;
pair gX=t*gQ;


draw(gQ--O--Q);
draw(scale(abs(t))*unitcircle,dashed+blue);
draw(shift(Q)*scale(abs(t-1))*unitcircle,dashed+lGreen);
draw(O--Q);
draw(shift(gQ)*scale(abs(t-1))*unitcircle,dashed+lGreen);

draw("$|r|$",t*dir(120)--O,blue);
draw("$|1-r|$",Q--Q+abs(t-1)*dir(110),lGreen);
draw("$|1-r|$",gQ--gQ+abs(t-1)*dir(150),lGreen);

dot(Label("$O$",black),O,SW,red);
dot(Label("$Q$",black),Q,SE,red);
dot(Label("$X_r$",black),t*Q,1.1dir(305),red);
dot(Label("$g(Q)$",black),gQ,NE,red);
dot(Label("$g(X_r)$",black),t*gQ,dir(35),red);