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

real th=58;

pair O=(0,0);
pair A=(1,0);
pair B=dir(th);
pair C=-A;

draw(arc(O,A,C));
draw(A--B--C);


draw(O--A,StickIntervalMarker(1,2,Blue,dotframe(Red)));
draw(O--C,StickIntervalMarker(1,2,Blue,dotframe(Red)));
draw(O--B,heavygreen,StickIntervalMarker(1,2,blue,dotframe(Red)));

draw(arc(A,0.12,180*angle(B-A)/pi,180*angle(C-A)/pi,CCW));

draw("$\beta$",arc(A,0.15,180*angle(B-A)/pi,180*angle(C-A)/pi,CCW));
draw("$\alpha$",arc(C,0.22,180*angle(A-C)/pi,180*angle(B-C)/pi));
draw("$\alpha$",arc(B,0.22,180*angle(C-B)/pi,180*angle(O-B)/pi));
draw(arc(B,0.12,180*angle(O-B)/pi,180*angle(A-B)/pi));
draw("$\beta$",arc(B,0.15,180*angle(O-B)/pi,180*angle(A-B)/pi));

