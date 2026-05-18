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

pair cent(pair p, pair q){
	real A[][]={{2p.x,2p.y},{2q.x,2q.y}};
	real[] b={p.x^2+p.y^2+1,q.x^2+q.y^2+1};
	real[] c=solve(A,b);
	return (c[0],c[1]);
	}

real rad(pair p, pair q){
	real l=dot(cent(p,q),cent(p,q));
	return sqrt(l-1);
	}

void circ(pair p, pair q, pen pen=black){
	real paral=p.x*q.y-p.y*q.x;
	if(paral==0){draw(p--q,pen);}
	else{
	draw(arc(cent(p,q),rad(p,q),min(degrees(p-cent(p,q)),degrees(q-cent(p,q))),max(degrees(p-cent(p,q)),degrees(q-cent(p,q)))),pen);
	}
	}

pair al=(0,-1/2);
pair be=(0,-1);
pair be=(1,0);

pair f(pair z){return be*(al-z)/(conj(al)*z-1);}

pair A=(0,-1/2);
pair B=(0,-1/5);
pair C=(3/5,-1/5);

circ(A,B,Red);
circ(B,C,lGreen);
circ(C,A,Blue);

draw(unitcircle,dashed);

circ(f(A),f(B),Red);
circ(f(B),f(C),lGreen);
circ(f(C),f(A),Blue);

dot("$A$",A,SW);
dot("$B$",B,W);
dot("$C$",C,SE);

dot("$O=f(A)$",f(A),W);
dot("$f(B)$",f(B),NW);
dot("$f(C)$",f(C),N);

draw(arc(A,0.1,45,90),lGreen);
draw(arc(f(A),0.1,45,90),lGreen);

write(conj(al));
write(f(A));
write(f(B));
write(f(C));