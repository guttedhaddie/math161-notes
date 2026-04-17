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

size(120);

dot("$P$",(1,2),NE);
draw((0,2)--(1,2)--(1,0),dashed);

draw(unitcircle,blue);

xaxis("$x$",-2.2,3.4,red,RightTicks(new real[]{-2,-1,1,2,3}));
yaxis("$y$",-2.2,3.4,red,LeftTicks(new real[]{-2,-1,1,2,3}));
