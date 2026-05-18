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

size(110);

path c=unitcircle;

pair P=0.5dir(40);
pair O=(0,0);
fill(c,0.2grey+0.8white);

pair al=0.3*dir(30);


pair f(pair z){return (al-z)/(conj(al)*z-1);}
pair finv(pair z){return (al+z)/(conj(al)*z+1);}


void traj(pair b, pen pen){
pair bb=finv(finv(finv(b)));
	guide p=bb;
for(int k=0; k<6; ++k){
	bb=f(bb);
	p=p..bb;
	}
draw(p,Arrow(Relative(0.42)));
pair bb=finv(finv(finv(b)));
	dot(bb,pen);
	for(int k=0; k<6; ++k){
		bb=f(bb);
		dot(bb,pen);
	}
}

traj(0.81*dir(120),red);
traj(0.54*dir(120),orange);
traj(0.27*dir(120),yellow);
traj(O,lGreen);
traj(-0.27*dir(120),blue);
traj(-0.54*dir(120),purple);
traj(-0.81*dir(120),grey);


dot("$\alpha$",al,0.4SE,lGreen,UnFill);
dot("$O$",O,0.4SE,lGreen,UnFill);