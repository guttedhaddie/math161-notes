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

size(190,0);

pair A=(0,0);
pair B=(3,0);
pair C=(0.4,3);
pair D=B+(sqrt(C.x^2+C.y^2),0);
pair EE=(0.5,0);
pair F=B+(sqrt((C.x-EE.x)^2+(C.y-EE.y)^2),0);

draw(A--EE);
draw(C--F);
draw(EE--B);
draw(C--EE);
draw(A--C,blue,StickIntervalMarker(1,3,blue,dotframe(red)));
draw(B--F,blue,StickIntervalMarker(1,3,blue,dotframe(red)));
draw(B--C,Brown,StickIntervalMarker(1,2,Brown,dotframe(red)));

dot(Label("$A$",black),A,SW,red);
label("$B$",B,S);
label("$C$",C,NW);
label("$D$",F,SE);
dot(Label("$E$",black),EE,S,red);

draw("$\eta$",arc(C,C+0.4unit(EE-C),C+0.4unit(B-C)),lGreen);
draw("$\delta$",arc(B,B+0.25unit(D-B),B+0.25unit(C-B)),lGreen);

