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

size(140,0);

real th=40;

pair A=(0,0);
pair B=(1,0);
pair C=1.3dir(th);
pair EE=unit(C);

draw(1.6B--A--1.2C,Arrows);

path P=shift(B)*scale(length(B-EE))*unitcircle;
path Q=shift(EE)*scale(length(B-EE))*unitcircle;
pair R[]=intersectionpoints(P,Q);
pair D=R[0];

//draw(shift(B)*scale(length(B-EE))*unitcircle);
//draw(shift(EE)*scale(length(B-EE))*unitcircle);
draw(A--D);
draw(EE--D--B,StickIntervalMarker(2,1,Magenta,dotframe(Red)));
draw(EE--A--B,StickIntervalMarker(2,2,Blue,dotframe(Red)));
draw(EE--B);
draw(arc(EE,EE+0.2unit(B-EE),EE+0.2unit(D-EE)),StickIntervalMarker(2,1,heavygreen));
draw(arc(EE,EE+0.2unit(A-EE),EE+0.2unit(B-EE)),StickIntervalMarker(1,1,Orange));
draw(arc(B,B+0.2unit(D-B),B+0.2unit(EE-B)),StickIntervalMarker(2,1,heavygreen));
draw(arc(B,B+0.2unit(EE-B),B+0.2unit(A-B)),StickIntervalMarker(1,1,Orange));
draw(arc(A,A+0.2unit(B-A),A+0.2unit(C-A)),StickIntervalMarker(2,1,Purple));

dot(Label("$A$",black),A,SW,Red);
dot(Label("$B$",black),B,SE,Red);
dot(Label("$C$",black),C,NW,Red);
dot(Label("$D$",black),D,NE,Red);
dot(Label("$E$",black),EE,NW,Red);

dot(intersectionpoint(A--D,B--EE),red);