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

size(150);

path c=unitcircle;



draw(c);

draw(dir(-30)--dir(100),Red);


path t=dir(-30)--dir(-30)+10dir(60);
path s=dir(100)--dir(100)+10dir(10);
	

pair I=intersectionpoint(t,s);

draw(dir(-30)--I,lGreen);
draw(dir(100)--I,lGreen);

int n=10;
for(int i=1; i<n; ++i){
	path p=I--I+10dir(-120-(170-120)*i/n);
	//draw(p);
	pair[] J=intersectionpoints(p,c);
	draw(I--J[0],dashed);
	draw(J[0]--J[1],Blue);
	}
	
	dotfactor=8;
	dot(I,lGreen);

dot(Label("$\Omega$",black),dir(-30),dir(-30),Red,UnFill);
dot(Label("$\Theta$",black),dir(100),dir(100),Red,UnFill);
dot(Label("$P$",black),0.215*dir(-30)+0.785*dir(100),dir(230),Red);
	
dot(Label("$Q$",black),0.595*dir(-30)+0.405*dir(100),dir(255),Red);