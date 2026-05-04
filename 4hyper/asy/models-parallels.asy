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

size(120);

path c=unitcircle;

void hcirc(pair Q, real Ed, pen pen){
	pair mip=midpoint(Q--dir(Ed));
	real ang=degrees(dir(Ed)-Q);
	path p=mip-100dir(ang+90)--mip+100dir(ang+90);
	path q=dir(Ed)-100dir(Ed+90)--dir(Ed)+100dir(Ed+90);
	pair I=intersectionpoint(p,q);
	real r=arclength(I--dir(Ed));
	draw(shift(I)*scale(r)*unitcircle,pen);
	}

filldraw(unitcircle,0.2grey+0.8white,white);
pair P=0.3dir(90);

int n=10;
for(int i=0; i<=n; ++i){
	hcirc(P,30+30*i/n,lGreen);
	hcirc(P,240-50*i/n,lGreen);
	}

hcirc(dir(240),30,Red+linewidth(1));
clip(c);
dot("$P$",P,NW,blue);
label("$\ell$",0.25dir(305),Red);


