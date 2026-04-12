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
pen lgreen=rgb("00a000");

import graph;
import markers;

size(0,100);

pair A=(1,0);
pair B=(0,3);
pair C=-A;

draw(B--(0,0),dashed+heavygreen);

draw(A--B,StickIntervalMarker(1,2,Blue,dotframe(Red)));
draw(C--B,StickIntervalMarker(1,2,Blue,dotframe(Red)));
draw(C--A,StickIntervalMarker(2,2,lgreen,dotframe(Red)));

draw(arc(A,0.25,180*angle(B-A)/pi,180*angle(C-A)/pi,CCW));
draw(arc(C,0.25,180*angle(B-C)/pi,180*angle(A-C)/pi));

//draw((-0.1,0)--(-0.1,0.1)--(0.1,0.1)--(0.1,0),heavygreen);