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

size(145);

real a=0.3;

xaxis("$x$",red);
yaxis("$y$",red);
ytick(Label("$a$",align=W),a,W,red);


real xx=0.75;

pair F=(0,a);

real y(real x){return x^2/(4*a);}

pair P=(xx,y(xx));
pair Q=(xx,-a);

draw(Label("$\ell$",Relative(1)),(-1,-a)--(1,-a));

draw(F--P--Q,dashed,StickIntervalMarker(2,1,heavygreen));

draw(graph(y,-1,1),blue);

dot("$F$",F,SE);

dot("$P$",P,dir(100));
dot("$Q$",Q,S);

draw(box(Q,Q+(-0.1,0.1)));
