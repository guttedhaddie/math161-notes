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

size(180,0);

real th=40;

pair A=(0,0);
pair B=(1.4,0);
pair C=1.2dir(th);
pair G=(C.x,-C.y);

transform T=shift((2.5,-0.2))*rotate(110,(0,0));

draw(T*A--T*B,Magenta,StickIntervalMarker(1,1,Magenta,dotframe(red)));
draw(T*C--T*B,Brown,StickIntervalMarker(1,2,Brown,dotframe(red)));
draw(T*C--T*A,blue,StickIntervalMarker(1,3,blue,dotframe(red)));


draw(C--G);

draw(A--B,Magenta,StickIntervalMarker(1,1,Magenta,dotframe(red)));
draw(C--B,Brown,StickIntervalMarker(1,2,Brown,dotframe(red)));
draw(C--A,blue,StickIntervalMarker(1,3,blue,dotframe(red)));
draw(G--A,blue,StickIntervalMarker(1,3,blue,dotframe(red)));
draw(G--B,Brown,StickIntervalMarker(1,2,Brown,dotframe(red)));

label("$D$",A,W);
label("$E$",B,E);
label("$F$",C,NW);
label("$G$",G,SW);

draw(arc(A,A+0.25unit(G-A),A+0.25unit(B-A)),Brown,StickIntervalMarker(1,1,Brown));
draw(arc(C,C+0.25unit(A-C),C+0.25unit(G-C)),lGreen,StickIntervalMarker(1,2,lGreen));
draw(arc(G,G+0.25unit(C-G),G+0.25unit(A-G)),lGreen,StickIntervalMarker(1,2,lGreen));
draw(arc(C,C+0.25unit(G-C),C+0.25unit(B-C)),lGreen,StickIntervalMarker(1,1,lGreen));
draw(arc(G,G+0.25unit(B-G),G+0.25unit(C-G)),lGreen,StickIntervalMarker(1,1,lGreen));


label("$A$",T*A,S);
label("$B$",T*B,E);
label("$C$",T*C,NW);

draw(arc(T*A,T*A+0.25unit(T*B-T*A),T*A+0.25unit(T*C-T*A)),Brown,StickIntervalMarker(1,1,Brown));