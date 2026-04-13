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

draw(A--B);
draw(C--D);
draw(A--C,blue,StickIntervalMarker(1,1,blue,dotframe(red)));
draw(B--D,blue,StickIntervalMarker(1,1,blue,dotframe(red)));
draw(B--C,Brown,StickIntervalMarker(1,2,Brown,dotframe(red)));

label("$A$",A,SW);
label("$B$",B,S);
label("$C$",C,NW);
label("$D$",D,SE);

draw("$\alpha$",arc(A,A+0.35unit(B-A),A+0.35unit(C-A)),Brown);
draw("$\beta$",arc(B,B+0.45unit(C-B),B+0.45unit(A-B)),blue);
draw("$\gamma$",arc(C,C+0.4unit(A-C),C+0.4unit(B-C)),lGreen);
draw("$\delta$",arc(B,B+0.25unit(D-B),B+0.25unit(C-B)),lGreen);
draw("$\epsilon$",arc(C,C+0.7unit(B-C),C+0.7unit(D-C)),blue);