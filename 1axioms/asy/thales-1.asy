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

pair O=(0,0);
pair A=dir(15);

draw(-A--A);
draw(arc(O,A,-A),StickIntervalMarker(1,2,Blue,dotframe(Red)));
draw(arc(O,-A,A),StickIntervalMarker(1,2,Blue,dotframe(Red)));
dot(O);

