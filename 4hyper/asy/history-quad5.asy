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

size(160,80,IgnoreAspect);

pair A=(-1,0);
pair B=(1,0);
pair C=(1,1);
pair D=(-1,1);

path bx=box((0,0),(0.1,0.1));
draw(shift(A)*bx);
draw(shift(B)*rotate(90,(0,0))*bx);
draw(shift(C)*rotate(180,(0,0))*bx);
draw(shift(D)*rotate(270,(0,0))*bx);

draw(A--C);
draw(A--B);
draw(D--C);
draw(B--C,StickIntervalMarker(1,1,blue,dotframe(red)));
draw(A--D,StickIntervalMarker(1,1,blue,dotframe(red)));

label("$B$",B,SE);
label("$A$",A,SW);
label("$C$",C,E);
label("$D$",D,W);


draw(arc(C,0.25,degrees(A-C),270),StickIntervalMarker(1,2,BlueViolet));
draw(arc(A,0.25,degrees(C-A),90),StickIntervalMarker(1,2,BlueViolet));