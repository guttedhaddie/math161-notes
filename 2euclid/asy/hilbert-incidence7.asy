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

size(120);

real r=2;
draw(unitcircle,linewidth(1));
draw(r*dir(-30)--r*dir(90),Red+linewidth(1));
draw(r*dir(90)--r*dir(210),Orange+linewidth(1));
draw(r*dir(210)--r*dir(-30),0.9Yellow+0.1Black+linewidth(1));
draw(r*dir(-30)--dir(150),0.7Lime+0.3Black+linewidth(1));
draw(r*dir(90)--dir(270),Blue+linewidth(1));
draw(r*dir(210)--dir(30),Violet+linewidth(1));

void ddot(pair a, real b, pen p, pen q, pen r){
	path P=(0,0)--arc((0,0),b,0,120)--cycle;
	fill(shift(a)*P,p);
	fill(shift(a)*rotate(120,(0,0))*P,q);
	fill(shift(a)*rotate(-120,(0,0))*P,r);
	//draw(shift(a)*scale(b)*unitcircle,linewidth(0.3));
}

ddot((0,0),0.15,Blue,0.7Lime+0.3Black,Violet);
ddot(dir(30),0.15,Red,Violet,Black);
ddot(dir(150),0.15,Orange,0.7Lime+0.3Black,Black);
ddot(dir(270),0.15,0.9Yellow+0.1Black,Blue,Black);
ddot(dir(30),0.15,Red,Violet,Black);
ddot(r*dir(90),0.15,Red,Blue,Orange);
ddot(r*dir(210),0.15,0.9Yellow+0.1Black,Violet,Orange);
ddot(r*dir(-30),0.15,Red,0.7Lime+0.3Black,0.9Yellow+0.1Black);