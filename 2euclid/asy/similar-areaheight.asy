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

size(100);

void rtang(real r, pair P, real th, pen pen=red){
	transform T=shift(P)*rotate(th,(0,0));
	draw(T*box((0,0),(r,r)),pen);
}

pair A=(0,0);
pair B=dir(-10);
pair C=1.3*dir(70);

path ppp=C--C-3*I*(B-A);

pair D=intersectionpoint(ppp,B--A);

draw(A--C--B);

rtang(0.05,D,degrees(B-A),blue);
draw("$h$",D--C,blue+dashed);

draw("$b$",A--B,lGreen);