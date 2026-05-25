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

size(140);

draw(unitcircle);

int N=9;
real th=360/N;

draw(dir(0)--(0,0)--dir(th));
draw("$1$",dir(th)--(0,0));

draw(dir(0)--dir(th),Blue+linewidth(1));

for(int i=2; i<=N; ++i){
	draw(dir((i-1)*th)--dir(i*th));
	}
for(int i=1; i<=N; ++i){
	dot(dir(i*th),Red);
	}

label("$R$",dir(th/2),dir(th/2),Blue);

draw("$\frac{2\pi}N$",arc((0,0),0.34,0,th));