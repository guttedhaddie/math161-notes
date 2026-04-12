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

size(140);

pair A=dir(180);
pair B=-A;
pair C=(0,sqrt(3));
draw(shift(A)*scale(2)*unitcircle);
draw(shift(B)*scale(2)*unitcircle);

draw(B--A--C--B,StickIntervalMarker(3,2,Blue,dotframe(Red)));


label("$A$",A,SW);
label("$B$",B,SE);
label("$C$",C,N);