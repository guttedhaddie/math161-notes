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
pen mRed=rgb("eb0000");

import graph;

size(140,0);

filldraw(unitcircle,0.1grey+0.9white);

path p=(2,0)..(2,2)..(3,3)..(4,2)..(3,1)..(4,0)..cycle;

filldraw(p,0.1grey+0.9white);

pair yy=point(p,2.59);

draw(Label("$d_X(y)$",Relative(0.7)),yy--unit(yy),dashed+Blue);
dot("$y$",yy);
//dot(unit(yy),UnFill);


pair xy=point(p,0.21);
draw(Label("$d_Y(x)$",Relative(0.36)),-unit(xy)--xy,dashed+mRed);
dot("$x$",-unit(xy),SW);


label("$X$",(0,-1.3));
label("$Y$",(3,-1.3));