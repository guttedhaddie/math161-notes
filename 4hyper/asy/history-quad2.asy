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

size(160);

pair A=(0,0);
pair B=(2,0);
pair C=(2,0.7);
pair D=(0,0.7);
pair EE=(2,-0.7);
pair M=0.5(A+B);

fill(M--arc(M,M+0.15*unit(D-M),M+0.15*unit(A-M))--cycle,Magenta);
fill(M--arc(M,M+0.15*unit(EE-M),M+0.15*unit(B-M))--cycle,Magenta);
fill(D--arc(D,D+0.15*unit(M-D),D+0.15*unit(C-D))--cycle,Blue);
fill(C--arc(C,C+0.15*unit(D-C),C+0.15*unit(B-C))--cycle,Brown);
fill(EE--arc(EE,EE+0.15*unit(C-EE),EE+0.15*unit(M-EE))--cycle,lGreen);
fill(D--arc(D,D+0.15*unit(A-D),D+0.15*unit(M-D))--cycle,lGreen);

draw(C--D);
draw(D--EE--B);
draw(A--D,StickIntervalMarker(1,1,Blue));
draw(B--C,StickIntervalMarker(1,1,Blue));
draw(B--EE,StickIntervalMarker(1,1,Blue));
draw(A--B,StickIntervalMarker(2,2,lGreen));

dot(Label("$A$",black),A,W,red);
dot(Label("$B$",black),B,E,red);
dot(Label("$C$",black),C,E,red);
dot(Label("$D$",black),D,W,red);
dot(Label("$E$",black),EE,E,red);
dot(Label("$M$",black),M,SW,red);
draw(B+0.1unit(C-B)--B+0.1unit(C-B)+0.1unit(A-B)--B+0.1unit(A-B));
draw(A+0.1unit(B-A)--A+0.1unit(B-A)+0.1unit(D-A)--A+0.1unit(D-A));

