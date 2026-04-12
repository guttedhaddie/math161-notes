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

size(160,0);

pair B=(0,0);
pair C=(2,0);
pair A=(1,1);
pair D=(3,0);
pair M=(A+C)/2;
pair E=2M-B;

draw(A--B--D);
draw(C--E);

draw(A--C,StickIntervalMarker(2,1,Blue));
draw(B--E,StickIntervalMarker(2,2,Blue));

draw(arc(A,0.15,180*angle(B-A)/pi,180*angle(C-A)/pi),StickIntervalMarker(2,1,Blue));
draw(arc(C,0.15,180*angle(E-C)/pi,180*angle(A-C)/pi),StickIntervalMarker(2,1,Blue));
draw(arc(M,0.15,180*angle(C-M)/pi,180*angle(E-M)/pi,CCW),StickIntervalMarker(1,1,Blue));
draw(arc(M,0.15,180*angle(A-M)/pi,180*angle(B-M)/pi,CCW),StickIntervalMarker(1,1,Blue));

dot(Label("$A$",Black),A,N,Red);
dot(Label("$B$",Black),B,S,Red);
dot(Label("$C$",Black),C,S,Red);
dot(Label("$M$",Black),M,dir(80),Red);
dot(Label("$E$",Black),E,N,Red);