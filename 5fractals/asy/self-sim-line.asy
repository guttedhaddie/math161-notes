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

size(0,110);

picture lin;
pair A=(0,0);
pair B=(3,1);

draw(lin,A--B,lGreen+linewidth(1),StickIntervalMarker(3,1,dotframe(Red)));

add(shift((-0.15,3.0))*lin);

for(int m=0; m<3; ++m){
	for(int n=0; n<3; ++n){
		filldraw(scale(0.9)*shift((m,n))*unitsquare,0.5Blue+0.5white);
	}
	}