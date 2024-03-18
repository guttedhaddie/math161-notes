settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120);

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

pair al=(1/2,0);
pair be=(0,1);

pair f(pair z){return be*(z-al)/(conj(al)*z-1);}

pair P=(1/2,0);
pair Q=(2/3,sqrt(2)/3);

circ(P,Q,red);
circ(f(P),f(Q),heavygreen);

draw(unitcircle,dashed);

dot("$P$",P,NW);
dot("$Q$",Q,SE);

dot("$O=f(P)$",f(P),SW);
dot("$f(Q)$",f(Q),S);
