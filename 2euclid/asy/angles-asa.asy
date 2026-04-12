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

size(150,0);

pair A=(0,0);
pair B=(3,0);
pair C=(2.2,1);
pair G=C+0.2(C-B);

picture two;

draw(C--A);
draw(A--B,blue,StickIntervalMarker(1,2,blue));
draw(B--C,lGreen,StickIntervalMarker(1,1,lGreen));
dot(Label("$A$",black),A,S,red);
dot(Label("$B$",black),B,S,red);
dot(Label("$C$",black),C,E,red);
draw(arc(A,A+0.3dir(B-A),A+0.3dir(C-A)),red);
draw(arc(B,B+0.25dir(C-B),B+0.18dir(A-B)),Magenta);
draw(arc(B,B+0.28dir(C-B),B+0.22dir(A-B)),Magenta);

draw(two,C--A);
draw(two,A--B,blue,StickIntervalMarker(1,2,blue));
//draw(two,B--C,lGreen);
draw(two,B--G,lGreen,StickIntervalMarker(1,1,lGreen));
draw(two,A--G,dashed);
dot(two,Label("$D$",black),A,S,Red);
dot(two,Label("$E$",black),B,S,Red);
dot(two,Label("$F$",black),C,E,Red);
draw(two,arc(A,A+0.3dir(B-A),A+0.3dir(C-A)),Red);
draw(two,arc(B,B+0.25dir(C-B),B+0.18dir(A-B)),Magenta);
draw(two,arc(B,B+0.28dir(C-B),B+0.22dir(A-B)),Magenta);
dot(two,Label("$G$",black),G,NE,Red);

add(shift(0,-1.6)*two);