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

xaxis(0,4,red,RightTicks(new real[]{},new real[]{0,1,2,3,4}));
yaxis(0,2,red,LeftTicks(new real[]{},new real[]{0,1,2}));
//labelx("$x$",1.6,S,red);

transform T=(3,1,3/5,4/5,4/5,-3/5);


pair P=(1,0);
pair Q=(0,0);
pair R=(0,1);

draw(P--Q,Blue+linewidth(1));
draw(R--Q,Brown+linewidth(1));
draw(T*P--T*Q,Blue+linewidth(1));
draw(T*R--T*Q,Brown+linewidth(1));

dot(Label("$A$",black),P,SE,Blue);
dot(Label("$B$",black),Q,SW);
dot(Label("$C$",black),R,NW,Brown);
dot(Label("$f(P)$",black),T*P,Blue);
dot(Label("$f(Q)$",black),T*Q,NW);
dot(Label("$f(R)$",black),T*R,Brown);


//dot(T*P,blue);
//dot(T*Q,heavygreen);
//dot(T*R,magenta);

draw(arc(Q,0.2,0,90),lGreen,ArcArrow);
draw(arc(T*Q,T*Q+0.2unit(T*P-T*Q),T*Q+0.2unit(T*R-T*Q)),Magenta,ArcArrow);

draw("$f$",(0.8,0.4)..(2.5,0.9){dir(3)},Arrow);