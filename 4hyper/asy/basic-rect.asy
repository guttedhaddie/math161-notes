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

size(0,90);

pair A=(0,0);
pair B=(2,0);
pair C=(2,1);
pair D=(0,1);


real sc=0.08;
path sq=scale(sc)*unitsquare;
draw(sq);
draw(shift(B-(sc,0))*sq);
draw(shift(C-(sc,sc))*sq);
draw(shift(D-(0,sc))*sq);

draw(A--C);
draw(A--B,StickIntervalMarker(1,2,Blue,dotframe(red)));
draw(C--B,StickIntervalMarker(1,1,lGreen,dotframe(red)));
draw(C--D,StickIntervalMarker(1,2,Blue,dotframe(red)));
draw(D--A,StickIntervalMarker(1,1,lGreen,dotframe(red)));

draw(arc(A,0.25unit(C-A),0.25unit(D-A),CCW),StickIntervalMarker(1,2,Brown));
draw(arc(A,0.3unit(B-A),0.3unit(C-A),CCW),StickIntervalMarker(1,1,Magenta));
draw(arc(C,C+0.25unit(A-C),C+0.25unit(B-C),CCW),StickIntervalMarker(1,2,Brown));
draw(arc(C,C+0.3unit(D-C),C+0.3unit(A-C),CCW),StickIntervalMarker(1,1,Magenta));

label("$A$",A,SW);
label("$B$",B,SE);
label("$C$",C,NE);
label("$D$",D,NW);
//label("$\alpha$",A+0.48dir(13));
//label("$\beta$",A+0.45dir(60));
//label("$\gamma$",C+0.45dir(240));
//label("$\delta$",C+0.45dir(180+13));