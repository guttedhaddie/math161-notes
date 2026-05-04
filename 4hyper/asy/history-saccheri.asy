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

size(200);

pair B=(0,0);
pair C=(2,0);
pair A=(0.5,1);
pair D=(3.2,0);

pair M=(A+C)/2;
pair EE=2M;

draw(C--A--B--C);
draw(EE--C);


label("$M$",M,2dir(70));
label("$A$",A,NW);
label("$B$",B,SW);
label("$C$",C,SE);
label("$E$",EE,NE);


filldraw(A--arc(A,0.2,180*angle(B-A)/pi,180*angle(C-A)/pi)--cycle,Brown);
filldraw(C--arc(C,0.2,180*angle(EE-C)/pi,180*angle(A-C)/pi)--cycle,Brown);
filldraw(M--arc(M,0.2,180*angle(EE-M)/pi,180*angle(C-M)/pi)--cycle,Turquoise);
filldraw(M--arc(M,0.2,180*angle(A-M)/pi,180*angle(B-M)/pi,CCW)--cycle,Turquoise);
filldraw(B--arc(B,0.2,180*angle(M-B)/pi,180*angle(A-B)/pi)--cycle,lGreen);
filldraw(EE--arc(EE,0.2,180*angle(M-EE)/pi,180*angle(C-EE)/pi,CCW)--cycle,lGreen);
filldraw(B--arc(B,0.3,180*angle(C-B)/pi,180*angle(M-B)/pi)--cycle,Blue);
filldraw(C--arc(C,0.27,180*angle(M-C)/pi,180*angle(B-C)/pi)--cycle,Magenta);

draw(B--EE,StickIntervalMarker(2,3,Brown,dotframe(red)));
draw(C--A,StickIntervalMarker(2,1,lGreen,dotframe(red)));
draw(A--B,StickIntervalMarker(1,2,Turquoise,dotframe(red)));
draw(C--EE,StickIntervalMarker(1,2,Turquoise,dotframe(red)));
