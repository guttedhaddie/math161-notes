settings.tex="lualatex";
defaultpen(fontsize(12pt));

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
%\usepackage[otfmath,theoremfont,trueslanted,largesc]{newpx}
\setmainfont{TeX Gyre Pagella X}
\setmathfont{TeX Gyre Pagella Math}
%\everydisplay{\Umathoperatorsize\displaystyle=4.5ex}
\usepackage[svgnames,x11names]{xcolor}
");

import x11colors;
pen lgreen=rgb("00a000");

import graph;

size(0,140);

real a=1;
real b=2;

path tri=(0,0)--(a,0)--(a,b)--cycle;

filldraw(scale(a+b)*unitsquare,Lime);

filldraw(shift(b,0)*tri,yellow);
filldraw(shift(a,b+a)*rotate(180)*tri,Yellow);
filldraw(shift(a+b,b)*rotate(90)*tri,Yellow);
filldraw(shift(0,a)*rotate(270)*tri,Yellow);

