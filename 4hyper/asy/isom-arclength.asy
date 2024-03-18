settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(140);

pair cent(pair p, pair q){
	real A[][]={{p.x,p.y},{q.x,q.y}};
	real[] b={p.x^2+p.y^2+1,q.x^2+q.y^2+1};
	real[] c=0.5*solve(A,b);
	return (c[0],c[1]);
	}

real rad(pair p, pair q){
	real l=dot(cent(p,q),cent(p,q));
	return sqrt(l-1);
	}
	
void circ(pair p, pair q, pen pen=black){
	real paral=p.x*q.y-p.y*q.x;
	if(paral==0){draw(p--q);}
	else{
	draw(arc(cent(p,q),rad(p,q),min(degrees(p-cent(p,q)),degrees(q-cent(p,q))),max(degrees(p-cent(p,q)),degrees(q-cent(p,q)))),pen);
	}
	}
	
	
fill(unitcircle,0.2grey+0.8white);

pair Z=(-0.4,0.7);
pair cZ=(Z.x,-Z.y);
pair WW=(-0.25,0.8);
pair X=(-0.38,0.55);

pair f(pair z){return (Z-z)/(cZ*z-1);}
pair P=f(WW);
pair Q=f(X);


fill(arc(Z,0.07,-80,14)--Z--cycle,orange);
fill(arc((0,0),0.07,-80,14)--(0,0)--cycle,orange);

circ(Z,WW,blue);
circ(Z,X,heavygreen);
dot(Label("$z+\mathrm{d}z$",black),WW,dir(-10),red);
dot(Label("$z+\mathrm{d}w$",black),X,dir(230),red);
dot(Label("$z$",black),Z,NW,red);


draw((0,0)--P,blue);
draw((0,0)--Q,heavygreen);
dot(Label("$0$",black),(0,0),W,red);
dot(Label("$P$",black),P,SE,red);
dot(Label("$Q$",black),Q,SW,red);

pair A=(WW+Z)/2;
pair B=P/2;

draw("$f$",A+0.15(B-A){dir(-45)}--B+0.15(A-B),dashed,Arrow);
