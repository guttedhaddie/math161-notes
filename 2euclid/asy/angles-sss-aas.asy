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

size(120);

pair A=(0,0);
pair B=(3,0);
pair C=(2.3,1.5);

picture two;

//dot("$A$",A,S);
//dot("$B$",B,S);
//dot("$C$",C,E);
//draw(A--B,StickIntervalMarker(1,1,blue,dotframe(red)));
//draw(C--B,StickIntervalMarker(1,2,blue,dotframe(red)));
//draw(A--C,StickIntervalMarker(1,3,blue,dotframe(red)));

pair G=1.3C-0.3B;
draw(two,A--G--C,dashed+Brown);
dot(two,Label("$G$",Brown),G,E,Brown);
draw(two,C--A--B--cycle);
dot(two,"$B$",B,S);
dot(two,Label("$A$",black),A,S,red);
dot(two,Label("$C$",black),C,E,red);
draw(two,A--B,StickIntervalMarker(1,1,blue,dotframe(red)));
draw(two,arc(B,B+0.3unit(C-B),B+0.3unit(A-B)),StickIntervalMarker(1,2,lGreen));
draw(two,arc(C,C+0.3unit(A-C),C+0.3unit(B-C)),StickIntervalMarker(1,3,lGreen));
draw(two,arc(G,G+0.3unit(A-G),G+0.3unit(B-G)),Brown,StickIntervalMarker(1,3,lGreen));



add(shift(0,-2.5)*two);